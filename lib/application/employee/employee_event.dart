part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.initialize() = _Initialize;
  const factory EmployeeEvent.getAllEmployee() = _GetAllEmployee;
  const factory EmployeeEvent.saveEmployee({
    required Employee employee,
    required bool isEdit,
  }) = _SaveEmployee;
  const factory EmployeeEvent.proceedToEditEmployee({
    required Employee employee,
  }) = _ProceedToEditEmployee;
  const factory EmployeeEvent.deleteEmployee({
    required Employee employee,
  }) = _DeleteEmployee;
}
