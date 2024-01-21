part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const EmployeeState._();

  const factory EmployeeState({
    required List<Employee> employeeList,
    required Employee selectedEmployee,
    required bool isLoading,
    required bool isSubmitting,
  }) = _EmployeeState;

  factory EmployeeState.initial() => EmployeeState(
        isSubmitting: false,
        isLoading: false,
        employeeList: <Employee>[],
        selectedEmployee: Employee.empty(),
      );
}
