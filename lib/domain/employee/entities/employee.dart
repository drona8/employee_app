import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';

@freezed
class Employee with _$Employee {
  const Employee._();
  const factory Employee({
    required String key,
    required String name,
    required String designation,
    required String fromDate,
    required String toDate,
  }) = _Employee;

  factory Employee.empty() => const Employee(
        key: '',
        name: '',
        designation: '',
        fromDate: '',
        toDate: '',
      );

  bool get isCurrentEmployee => toDate == 'No date';
}
