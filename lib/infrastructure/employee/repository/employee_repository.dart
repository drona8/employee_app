import 'package:dartz/dartz.dart';

import '../../../config.dart';
import '../../../domain/core/error/api_failures.dart';
import '../../../domain/core/error/failure_handler.dart';
import '../../../domain/employee/entities/employee.dart';
import '../../../domain/employee/repository/i_employee_repository.dart';
import '../datasource/employee_local_datasource.dart';
import '../datasource/employee_remote_datasource.dart';

class EmployeeRepository extends IEmployeeRepository {
  final EmployeeRemoteDataSource remoteDataSource;
  final EmployeeLocalDataSource localDataSource;
  final Config config;

  EmployeeRepository({
    required this.remoteDataSource,
    required this.config,
    required this.localDataSource,
  });

  @override
  Future<Either<ApiFailure, List<Employee>>> getEmployeeList() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final List<Employee> employeeList =
            await localDataSource.getEmployeeList();

        return Right(employeeList);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final List<Employee> employeeList =
          await remoteDataSource.getEmployeeList();

      return Right(employeeList);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
