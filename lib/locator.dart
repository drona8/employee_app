import 'package:employee_app/application/employee/employee_bloc.dart';
import 'package:employee_app/infrastructure/employee/datasource/employee_local_datasource.dart';
import 'package:employee_app/infrastructure/employee/datasource/employee_remote_datasource.dart';
import 'package:employee_app/infrastructure/employee/repository/employee_repository.dart';
import 'package:get_it/get_it.dart';

import 'config.dart';
import 'domain/core/error/exception_handler.dart';
import 'infrastructure/core/local_storage/employee_storage.dart';
import 'presentation/routes/app_router.dart';
import 'presentation/routes/router_observer.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => AppRouter());
  locator.registerLazySingleton(() => RouterObserver());
  locator.registerLazySingleton(() => DataSourceExceptionHandler());
  locator.registerLazySingleton(
    () => EmployeeStorage(),
  );
  locator.registerLazySingleton(() => EmployeeLocalDataSource());
  locator.registerLazySingleton(
    () => EmployeeRemoteDataSource(
      storage: locator<EmployeeStorage>(),
      exceptionHandler: locator<DataSourceExceptionHandler>(),
    ),
  );
  locator.registerLazySingleton(
    () => EmployeeRepository(
      config: locator<Config>(),
      remoteDataSource: locator<EmployeeRemoteDataSource>(),
      localDataSource: locator<EmployeeLocalDataSource>(),
    ),
  );

  locator.registerLazySingleton(
    () => EmployeeBloc(
      repository: locator<EmployeeRepository>(),
    ),
  );
}
