import 'package:dartz/dartz.dart';

import '../../core/error/api_failures.dart';
import '../entities/employee.dart';

abstract class IEmployeeRepository {
  Future<Either<ApiFailure, List<Employee>>> getEmployeeList();
}
