part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const EmployeeState._();

  const factory EmployeeState({
    required List<Employee> currentEmployeeList,
    required List<Employee> previousEmployeeList,
    required Employee selectedEmployee,
    required bool isFetching,
    required bool isSubmitting,
    required bool isDeleting,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _EmployeeState;

  factory EmployeeState.initial() => EmployeeState(
        isSubmitting: false,
        isFetching: false,
        isDeleting: false,
        currentEmployeeList: <Employee>[],
        previousEmployeeList: <Employee>[],
        selectedEmployee: Employee.empty(),
        apiFailureOrSuccessOption: none(),
      );
}
