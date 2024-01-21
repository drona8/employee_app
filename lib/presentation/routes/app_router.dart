import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'route_name.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        RedirectRoute(
          path: RouteNames.empty,
          redirectTo: RouteNames.employeeList,
        ),
        AutoRoute(
          page: EmployeeListRoute.page,
          path: RouteNames.employeeList,
        ),
        AutoRoute(
          page: AddEmployeeRoute.page,
          path: RouteNames.addEmployee,
        ),
        AutoRoute(
          page: EditEmployeeRoute.page,
          path: RouteNames.editEmployee,
        ),
        RedirectRoute(
          path: '*',
          redirectTo: RouteNames.empty,
        ),
      ];
}
