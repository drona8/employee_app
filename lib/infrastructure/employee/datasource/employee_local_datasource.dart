import 'dart:convert';
import 'package:flutter/services.dart';

import '../../../domain/employee/entities/employee.dart';
import '../dtos/employee_dto.dart';

class EmployeeLocalDataSource {
  Future<List<Employee>> getEmployeeList() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/employeeListResponse.json'),
    );
    return (res['employees'] as List<dynamic>)
        .map((dynamic e) =>
            EmployeeDto.fromJson(e as Map<String, dynamic>).toDomain)
        .toList();
  }
}
