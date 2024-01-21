import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/core/error/exception.dart';
import '../../employee/dtos/employee_dto.dart';

class EmployeeStorage {
  static const _boxName = 'employee_box';
  static const _employeeListKey = 'employee_key';

  late Box<EmployeeDto> _employeeBox;

  EmployeeStorage();

  int get employeeBoxSize => _employeeBox.length;

  Future<void> init() async {
    try {
      await Hive.initFlutter();
      Hive.registerAdapter(EmployeeDtoAdapter());
      _employeeBox = await Hive.openBox(
        _boxName,
      );
    } catch (e) {
      await Hive.deleteBoxFromDisk(_boxName);
      await init();
    }
  }

  List<EmployeeDto> getAll() {
    try {
      return _employeeBox.values.toList();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future set(EmployeeDto employee) async {
    try {
      final bool isExistingEmployee =
          getAll().any((element) => element.key == employee.key);
      isExistingEmployee
          ? await _employeeBox.putAt(employee.key, employee)
          : await _employeeBox.add(employee);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future delete(EmployeeDto employee) async {
    try {
      await _employeeBox.delete(employee.key);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
