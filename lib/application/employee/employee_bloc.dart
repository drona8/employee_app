import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
      getAllEmployee: (_) async {
        emit(state.copyWith(isLoading: true));
        final failureOrSuccess = await repository.getEmployeeList();
        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(isLoading: false),
            );
          },
          (employeeList) {
            emit(
              state.copyWith(
                isLoading: false,
                employeeList: employeeList,
              ),
            );
          },
        );
      },
    );
  }
}
