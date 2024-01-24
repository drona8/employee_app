import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/employee/employee_bloc.dart';
import '../../../domain/employee/entities/employee.dart';

class CommonUtil {
  static void handleSnackBar({
    required BuildContext context,
    required String message,
    bool isUndoRequired = false,
    bool isDeleted = false,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.fixed,
        content: Text(
          message,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).canvasColor,
              ),
        ),
        action: isUndoRequired
            ? SnackBarAction(
                label: 'Undo',
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  final selectedEmployee =
                      context.read<EmployeeBloc>().state.selectedEmployee;
                  final newEmployee = isDeleted
                      ? Employee.empty().copyWith(
                          name: selectedEmployee.name,
                          designation: selectedEmployee.designation,
                          fromDate: selectedEmployee.fromDate,
                          toDate: selectedEmployee.toDate,
                          key: '',
                        )
                      : selectedEmployee;

                  context.read<EmployeeBloc>().add(
                        EmployeeEvent.saveEmployee(
                          employee: newEmployee,
                          isEdit: !isDeleted,
                        ),
                      );
                },
              )
            : null,
      ),
    );
  }
}
