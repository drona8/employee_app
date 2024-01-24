import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../../domain/employee/entities/employee.dart';

part 'employee_dto.freezed.dart';
part 'employee_dto.g.dart';

@freezed
class EmployeeDto extends HiveObject with _$EmployeeDto {
  @HiveType(typeId: 1, adapterName: 'EmployeeDtoAdapter')
  factory EmployeeDto({
    @JsonKey(name: 'id', defaultValue: '') @HiveField(0) required String id,
    @JsonKey(name: 'name', defaultValue: '') @HiveField(1) required String name,
    @JsonKey(name: 'designation', defaultValue: '')
    @HiveField(2)
    required String designation,
    @JsonKey(name: 'fromDate', defaultValue: '')
    @HiveField(3)
    required String fromDate,
    @JsonKey(name: 'toDate', defaultValue: '')
    @HiveField(4)
    required String toDate,
  }) = _EmployeeDto;
  EmployeeDto._();

  Employee get toDomain => Employee(
        key: key != null ? key.toString() : id,
        name: name,
        designation: designation,
        fromDate: fromDate,
        toDate: toDate,
      );

  factory EmployeeDto.fromDomain(Employee domain) {
    return EmployeeDto(
      id: domain.key,
      name: domain.name,
      designation: domain.designation,
      fromDate: domain.fromDate,
      toDate: domain.toDate,
    );
  }

  factory EmployeeDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDtoFromJson(json);
}
