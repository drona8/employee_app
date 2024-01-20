import 'dart:async';
import 'package:employee_app/presentation/core/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'config.dart';
import 'locator.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  setupLocator();

  final config = locator<Config>();
  config.appFlavor = flavor;
}

void runAppWithCrashlyticsAndLocalization() {
  runZonedGuarded(
    () {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(App(
        flavor: locator<Config>().appFlavor.name,
      ));
    },
    (error, stackTrace) {
      //record error to crashlyte
    },
  );
}

class App extends StatelessWidget {
  const App({super.key, required this.flavor});

  final String flavor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Employee List $flavor'),
          centerTitle: false,
        ),
        body: Center(
          child: SvgPicture.asset(
            AppAssets.noEmployeeIcon,
            height: 218,
            width: 261,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
