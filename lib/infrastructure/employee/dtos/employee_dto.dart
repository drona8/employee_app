import 'package:employee_app/domain/employee/entities/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'employee_dto.freezed.dart';
part 'employee_dto.g.dart';

@freezed
class EmployeeDto extends HiveObject with _$EmployeeDto {
  @HiveType(typeId: 1, adapterName: 'EmployeeDtoAdapter')
  factory EmployeeDto({
    @JsonKey(name: 'name', defaultValue: '') @HiveField(0) required String name,
    @JsonKey(name: 'designation', defaultValue: '')
    @HiveField(1)
    required String designation,
    @JsonKey(name: 'fromDate', defaultValue: '')
    @HiveField(2)
    required String fromDate,
    @JsonKey(name: 'toDate', defaultValue: '')
    @HiveField(3)
    required String toDate,
  }) = _EmployeeDto;
  EmployeeDto._();

  Employee get toDomain => Employee(
        key: key ?? '1',
        name: name,
        designation: designation,
        fromDate: fromDate,
        toDate: toDate,
      );

  factory EmployeeDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDtoFromJson(json);
}
