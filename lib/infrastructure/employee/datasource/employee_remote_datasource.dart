import 'package:dartz/dartz.dart';

import '../../../domain/core/error/exception_handler.dart';
import '../../../domain/employee/entities/employee.dart';
import '../../core/local_storage/employee_storage.dart';
import '../dtos/employee_dto.dart';

class EmployeeRemoteDataSource {
  final EmployeeStorage storage;
  final DataSourceExceptionHandler exceptionHandler;

  EmployeeRemoteDataSource({
    required this.exceptionHandler,
    required this.storage,
  });

  Future<List<Employee>> getEmployeeList() async {
    return await exceptionHandler.handle(() async {
      final List<EmployeeDto> res = storage.getAll();
      return res.map((EmployeeDto e) => e.toDomain).toList();
    });
  }

  Future<List<Employee>> saveEmployee({
    required Employee employee,
    required bool isEdit,
  }) async {
    return await exceptionHandler.handle(() async {
      storage.set(EmployeeDto.fromDomain(employee));
      return getEmployeeList();
    });
  }

  Future<List<Employee>> removeEmployee({
    required Employee employee,
  }) async {
    return await exceptionHandler.handle(() async {
      storage.delete(EmployeeDto.fromDomain(employee));
      return getEmployeeList();
    });
  }
}
