// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:employee_app/presentation/employee/add_employee_screen.dart'
    as _i1;
import 'package:employee_app/presentation/employee/edit_employee_screen.dart'
    as _i2;
import 'package:employee_app/presentation/employee/employee_list_screen.dart'
    as _i3;
import 'package:flutter/material.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AddEmployeeRoute.name: (routeData) {
      final args = routeData.argsAs<AddEmployeeRouteArgs>(
          orElse: () => const AddEmployeeRouteArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddEmployeeScreen(
          key: args.key,
          isEdit: args.isEdit,
        ),
      );
    },
    EditEmployeeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EditEmployeeScreen(),
      );
    },
    EmployeeListRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EmployeeListScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddEmployeeScreen]
class AddEmployeeRoute extends _i4.PageRouteInfo<AddEmployeeRouteArgs> {
  AddEmployeeRoute({
    _i5.Key? key,
    bool isEdit = false,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          AddEmployeeRoute.name,
          args: AddEmployeeRouteArgs(
            key: key,
            isEdit: isEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'AddEmployeeRoute';

  static const _i4.PageInfo<AddEmployeeRouteArgs> page =
      _i4.PageInfo<AddEmployeeRouteArgs>(name);
}

class AddEmployeeRouteArgs {
  const AddEmployeeRouteArgs({
    this.key,
    this.isEdit = false,
  });

  final _i5.Key? key;

  final bool isEdit;

  @override
  String toString() {
    return 'AddEmployeeRouteArgs{key: $key, isEdit: $isEdit}';
  }
}

/// generated route for
/// [_i2.EditEmployeeScreen]
class EditEmployeeRoute extends _i4.PageRouteInfo<void> {
  const EditEmployeeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          EditEmployeeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditEmployeeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EmployeeListScreen]
class EmployeeListRoute extends _i4.PageRouteInfo<void> {
  const EmployeeListRoute({List<_i4.PageRouteInfo>? children})
      : super(
          EmployeeListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmployeeListRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
