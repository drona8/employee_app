import 'dart:async';
import 'package:flutter/material.dart';

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
          title: Text('Employee App $flavor'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
