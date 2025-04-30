import 'package:flutter/material.dart';
import 'package:mobile_test/debug_page.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DebugPage(),
    );
  }
}
