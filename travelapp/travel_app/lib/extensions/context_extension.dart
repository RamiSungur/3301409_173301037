import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Future routeTo(Widget page) => Navigator.of(this).push(MaterialPageRoute(
        builder: (context) => page,
      ));
  Future pushNamed(String routeName) =>
      Navigator.pushReplacementNamed(this, routeName);
}
