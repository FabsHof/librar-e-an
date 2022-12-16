import 'package:flutter/material.dart';
import './presentation/pages/settings.page.dart';
import './presentation/pages/main.page.dart';
import './util/constants.dart';
import './presentation/pages/details.page.dart';

void main() {
  runApp(LibrarEAnApp());
}

class LibrarEAnApp extends StatelessWidget {

  final Map<String, WidgetBuilder> routes = {
    Routes.HOME.name: (BuildContext context) => MainPage(),
    Routes.SETTINGS.name: (BuildContext context) => const SettingsPage(),
    Routes.DETAILS.name: (BuildContext context) => const DetailsPage(),
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      title: 'librar-e-an app',
      initialRoute: Routes.HOME.name,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}
