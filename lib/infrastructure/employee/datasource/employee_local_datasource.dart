import 'dart:convert';
import 'package:flutter/services.dart';

import '../../../domain/employee/entities/employee.dart';
import '../dtos/employee_dto.dart';

class EmployeeLocalDataSource {
  Future<List<Employee>> getEmployeeList() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {},
    );
    final res = json.decode(
      await rootBundle.loadString('assets/json/employeeListResponse.json'),
    );
    return (res['employees'] as List<dynamic>)
        .map((dynamic e) =>
            EmployeeDto.fromJson(e as Map<String, dynamic>).toDomain)
        .toList();
  }

  Future<List<Employee>> saveEmployee() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {},
    );

    return getEmployeeList();
  }

  Future<List<Employee>> deleteEmployee() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {},
    );

    return getEmployeeList();
  }
}
