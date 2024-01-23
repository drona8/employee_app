import 'package:auto_route/auto_route.dart';
import 'package:employee_app/domain/employee/entities/employee.dart';
import 'package:employee_app/presentation/core/widgets/no_record_found.dart';
import 'package:employee_app/presentation/core/widgets/scroll_list.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/employee/employee_bloc.dart';
import '../../infrastructure/employee/repository/employee_repository.dart';
import '../../locator.dart';
import '../core/app_assets.dart';
import '../core/widgets/employee_app_bar.dart';
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
      ),
      body: BlocProvider<EmployeeBloc>(
        create: (_) => EmployeeBloc(repository: locator<EmployeeRepository>()),
        child: _EmployeeList(),
      ),
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
    return BlocBuilder<EmployeeBloc, EmployeeState>(
      bloc: BlocProvider.of<EmployeeBloc>(context)
        ..add(
          const EmployeeEvent.getAllEmployee(),
        ),
      buildWhen: (EmployeeState previous, EmployeeState current) =>
          previous.isLoading != current.isLoading,
      builder: (BuildContext context, EmployeeState state) {
        return ScrollList<Employee>(
          isLoading: state.isLoading,
          itemBuilder: (context, index, item) => _EmployeeItem(employee: item),
          items: state.employeeList,
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
  const _EmployeeItem({required this.employee});
  final Employee employee;
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
            employee.fromDate,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
      isThreeLine: true,
    );
  }
}
