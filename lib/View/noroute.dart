import 'package:flutter/material.dart';

class Noroute extends StatelessWidget {
  const Noroute({super.key, required this.settings});

  final RouteSettings settings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(settings.arguments.toString())),);
  }
}
