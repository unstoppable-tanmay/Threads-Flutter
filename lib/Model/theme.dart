import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  focusColor: Colors.black54,
  splashColor: Colors.transparent,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
  primaryColor: const Color.fromARGB(255, 13, 13, 13),
  focusColor: Colors.grey.shade400
);
