import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/widgets/employee_app_bar.dart';

@RoutePage()
class AddEmployeeScreen extends StatelessWidget {
  const AddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: EmployeeAppBar(
        title: 'Add Employee Page',
      ),
      body: Center(
        child: Text('Edit Employee'),
      ),
    );
  }
}
