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
          page: ManageEmployeeRoute.page,
          path: RouteNames.manageEmployee,
        ),
        RedirectRoute(
          path: '*',
          redirectTo: RouteNames.empty,
        ),
      ];
}
