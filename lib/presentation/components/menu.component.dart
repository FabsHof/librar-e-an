import 'package:flutter/material.dart';
import '../../util/theme.dart';
import '../../util/constants.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> menuItems = [
      {'title': 'Bibliothek', 'icon': Icons.book_outlined, 'route': Routes.HOME.name},
      {'title': 'Einstellungen', 'icon': Icons.settings, 'route': Routes.SETTINGS.name},
    ];

    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final Map<String, dynamic> menuItem = menuItems[index];
        return Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(menuItem['icon']),
                SizedBox(width: ThemeDimensions.M.dimension,),
                Text(menuItem['title'])
              ],
            ),

            onTap: () {
              Navigator.pushNamed(context, menuItem['route'] as String);
            },
          ),
        );
      });
  }
}