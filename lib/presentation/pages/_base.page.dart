import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({
    super.key,
    required this.child,
    this.title = '',
    this.floatingActionButton,
  });

  final Widget child;

  final String? title;
  final FloatingActionButton? floatingActionButton;

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.title != '' ? AppBar(
        title: Text(widget.title!),
      ) : null,
      body: widget.child,
      floatingActionButton: widget.floatingActionButton
    );
  }
}
