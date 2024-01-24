// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:employee_app/presentation/employee/employee_list_screen.dart'
    as _i1;
import 'package:employee_app/presentation/employee/manage_employee_screen.dart'
    as _i2;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    EmployeeListRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EmployeeListScreen(),
      );
    },
    ManageEmployeeRoute.name: (routeData) {
      final args = routeData.argsAs<ManageEmployeeRouteArgs>(
          orElse: () => const ManageEmployeeRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ManageEmployeeScreen(
          key: args.key,
          isEdit: args.isEdit,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.EmployeeListScreen]
class EmployeeListRoute extends _i3.PageRouteInfo<void> {
  const EmployeeListRoute({List<_i3.PageRouteInfo>? children})
      : super(
          EmployeeListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmployeeListRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ManageEmployeeScreen]
class ManageEmployeeRoute extends _i3.PageRouteInfo<ManageEmployeeRouteArgs> {
  ManageEmployeeRoute({
    _i4.Key? key,
    bool isEdit = false,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          ManageEmployeeRoute.name,
          args: ManageEmployeeRouteArgs(
            key: key,
            isEdit: isEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'ManageEmployeeRoute';

  static const _i3.PageInfo<ManageEmployeeRouteArgs> page =
      _i3.PageInfo<ManageEmployeeRouteArgs>(name);
}

class ManageEmployeeRouteArgs {
  const ManageEmployeeRouteArgs({
    this.key,
    this.isEdit = false,
  });

  final _i4.Key? key;

  final bool isEdit;

  @override
  String toString() {
    return 'ManageEmployeeRouteArgs{key: $key, isEdit: $isEdit}';
  }
}
