import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/employee/employee_bloc.dart';
import '../../infrastructure/employee/repository/employee_repository.dart';
import '../../locator.dart';
import '../core/app_assets.dart';
import '../core/widgets/employee_app_bar.dart';
import '../routes/route_name.dart';

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
        return state.employeeList.isEmpty
            ? SvgPicture.asset(
                AppAssets.noEmployeeIcon,
                height: 218,
                width: 261,
                fit: BoxFit.contain,
              )
            : Container();
      },
    );
  }
}
