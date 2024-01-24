import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/employee/employee_bloc.dart';
import '../../domain/employee/entities/employee.dart';
import '../../domain/core/error/api_failures.dart';
import '../core/utils/common_util.dart';
import '../core/widgets/custom_slidable.dart';
import '../core/widgets/employee_app_bar.dart';
import '../core/widgets/loading_shimmer.dart';
import '../core/widgets/no_record_found.dart';
import '../core/widgets/scroll_list.dart';
import '../routes/app_router.gr.dart';
import '../routes/route_name.dart';
import '../theme/app_colors.dart';

@RoutePage()
class EmployeeListScreen extends StatelessWidget {
  const EmployeeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmployeeAppBar(
        title: 'Employee List',
        isEdit: false,
        onDelete: null,
      ),
      body: _EmployeeList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.router.pushNamed(RouteNames.addEmployee),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _EmployeeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listenWhen: (previous, current) =>
          previous.isDeleting != current.isDeleting,
      listener: (context, state) {
        state.apiFailureOrSuccessOption.fold(
          () {
            if (!state.isDeleting) {
              CommonUtil.handleSnackBar(
                context: context,
                message: 'Employee deleted successfully!',
                isUndoRequired: true,
              );
              context.router.pop();
              //success
            }
          },
          (either) => either.fold(
            (failure) {
              CommonUtil.handleSnackBar(
                context: context,
                message: failure.failureMessage,
              );
            },
            (success) {},
          ),
        );
      },
      buildWhen: (EmployeeState previous, EmployeeState current) =>
          previous.isFetching != current.isFetching ||
          previous.currentEmployeeList != current.currentEmployeeList ||
          previous.previousEmployeeList != current.previousEmployeeList ||
          previous.isDeleting != current.isDeleting,
      builder: (BuildContext context, EmployeeState state) {
        final bool shouldBlockRefresh = state.isFetching || state.isDeleting;
        return ScrollList<Employee>(
          isLoading: state.isFetching,
          itemBuilder: (context, item) => _EmployeeItem(
            employee: item,
            state: state,
          ),
          group1Header: 'Current employees',
          group2Header: 'Previous employees',
          itemGroup1: state.currentEmployeeList,
          itemGroup2: state.previousEmployeeList,
          onRefresh: () => context.read<EmployeeBloc>().add(
                const EmployeeEvent.getAllEmployee(),
              ),
          noRecordFoundWidget:
              const NoRecordFound(title: 'No employee records found'),
          controller: ScrollController(),
        );
      },
    );
  }
}

class _EmployeeItem extends StatelessWidget {
  const _EmployeeItem({
    required this.employee,
    required this.state,
  });
  final Employee employee;
  final EmployeeState state;
  @override
  Widget build(BuildContext context) {
    return CustomSlidable(
      endActionPaneActions: [
        CustomSlidableAction(
          icon: Icons.delete_outline,
          onPressed: (context) => context
              .read<EmployeeBloc>()
              .add(EmployeeEvent.deleteEmployee(employee: employee)),
        ),
      ],
      enabled: !state.isDeleting,
      child: LoadingShimmer(
        enabled: state.isDeleting && state.selectedEmployee.key == employee.key,
        child: ListTile(
          tileColor: Theme.of(context).canvasColor,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
          title: Text(
            employee.name,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColor.lightBlack,
                ),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                employee.designation,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                employee.subtitleLebel,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          isThreeLine: true,
          onTap: () {
            context
                .read<EmployeeBloc>()
                .add(EmployeeEvent.proceedToEditEmployee(employee: employee));
            context.router.push(AddEmployeeRoute(isEdit: true));
          },
        ),
      ),
    );
  }
}
