import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/error/api_failures.dart';
import '../../domain/employee/entities/employee.dart';
import '../../domain/employee/repository/i_employee_repository.dart';

part 'employee_bloc.freezed.dart';
part 'employee_event.dart';
part 'employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final IEmployeeRepository repository;

  EmployeeBloc({
    required this.repository,
  }) : super(EmployeeState.initial()) {
    on<EmployeeEvent>(_onEvent);
  }

  Future<FutureOr<void>> _onEvent(
    EmployeeEvent event,
    Emitter<EmployeeState> emit,
  ) async {
    await event.map(
      initialize: (e) async => emit(EmployeeState.initial()),
      getAllEmployee: (_) async {
        emit(
          state.copyWith(
            isFetching: true,
            currentEmployeeList: <Employee>[],
            previousEmployeeList: <Employee>[],
          ),
        );
        final failureOrSuccess = await repository.getEmployeeList();
        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (employeeList) {
            emit(
              state.copyWith(
                isFetching: false,
                currentEmployeeList: _getCurrentEmployee(
                  employeeList: employeeList,
                ),
                previousEmployeeList: _getPreviousEmployee(
                  employeeList: employeeList,
                ),
              ),
            );
          },
        );
      },
      saveEmployee: (_SaveEmployee value) async {
        emit(state.copyWith(isSubmitting: true));
        final failureOrSuccess = await repository.saveEmployee(
          employee: value.employee,
          isEdit: value.isEdit,
        );
        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isSubmitting: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (employeeList) {
            emit(
              state.copyWith(
                isSubmitting: false,
                currentEmployeeList: _getCurrentEmployee(
                  employeeList: employeeList,
                ),
                previousEmployeeList: _getPreviousEmployee(
                  employeeList: employeeList,
                ),
              ),
            );
          },
        );
      },
      proceedToEditEmployee: (_ProceedToEditEmployee value) async {
        emit(
          state.copyWith(
            selectedEmployee: value.employee,
          ),
        );
      },
      deleteEmployee: (_DeleteEmployee value) async {
        emit(
          state.copyWith(
            isDeleting: true,
            selectedEmployee: value.employee,
          ),
        );
        final failureOrSuccess =
            await repository.deleteEmployee(employee: value.employee);
        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(
                isDeleting: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (employeeList) {
            emit(
              state.copyWith(
                isDeleting: false,
                currentEmployeeList: _getCurrentEmployee(
                  employeeList: employeeList,
                ),
                previousEmployeeList: _getPreviousEmployee(
                  employeeList: employeeList,
                ),
              ),
            );
          },
        );
      },
    );
  }

  List<Employee> _getCurrentEmployee({
    required List<Employee> employeeList,
  }) {
    return employeeList.where((element) => element.isCurrentEmployee).toList();
  }

  List<Employee> _getPreviousEmployee({
    required List<Employee> employeeList,
  }) {
    return employeeList.where((element) => !element.isCurrentEmployee).toList();
  }
}
