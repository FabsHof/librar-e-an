import 'package:flutter/material.dart';
import '../../util/constants.dart';
import '../../presentation/components/menu.component.dart';

class BaseLayout extends StatefulWidget {
  const BaseLayout({
    super.key,
    required this.child,
    this.showAppBar = true,
    this.title,
    this.floatingActionButton,
  });

  final Widget child;

  final Widget? title;
  final bool showAppBar;
  final FloatingActionButton? floatingActionButton;

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  @override
  Widget build(BuildContext context) {

    final bool showDrawerMenu = ModalRoute.of(context)?.settings.name == Routes.HOME.name;

    return Scaffold(
      appBar: widget.title != null ?
        AppBar(
          title: widget.title,
        ) : (
          widget.showAppBar ?
            AppBar() :
            null
        ),
      drawer: showDrawerMenu ? const Drawer(
        child: MenuComponent(),
      ) : null,
      body: widget.child,
      floatingActionButton: widget.floatingActionButton
    );
  }
}
