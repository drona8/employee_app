import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:employee_app/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'config.dart';
import 'infrastructure/core/local_storage/employee_storage.dart';
import 'locator.dart';
import 'presentation/routes/app_router.dart';
import 'presentation/routes/router_observer.dart';
import 'presentation/theme/theme_data.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  setupLocator();
  final config = locator<Config>();
  config.appFlavor = flavor;
}

void runAppWithCrashlyticsAndLocalization() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await locator<EmployeeStorage>().init();
      runApp(const App());
    },
    (error, stackTrace) {
      //record error to crashlyte
    },
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: appThemeData[AppTheme.light],
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [
          locator<RouterObserver>(),
        ],
      ),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
