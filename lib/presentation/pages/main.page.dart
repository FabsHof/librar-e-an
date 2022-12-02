import 'package:flutter/material.dart';
import 'package:librar_e_an/presentation/pages/_base.page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    final Widget listWidget = ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('#${index} Book Title'),
            ),
          );
        }
    );


    return BasePage(
      // TODO: Switch between different libraries in click of a dropdown.
      title: 'Bibliothek 1',
      child: Center(
        child: listWidget,
      ),
    );
  }
}