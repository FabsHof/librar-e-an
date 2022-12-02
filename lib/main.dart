import 'package:flutter/material.dart';
import './presentation/pages/main.page.dart';
import './util/constants.dart';

void main() {
  runApp(LibrarEAnApp());
}

class LibrarEAnApp extends StatelessWidget {

  final Map<String, WidgetBuilder> routes = {
    Routes.home.name: (BuildContext context) => const MainPage()
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      title: 'librar-e-an app',
      initialRoute: Routes.home.name,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}
