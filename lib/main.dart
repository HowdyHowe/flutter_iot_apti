import 'package:control_iot_app/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ControlIotApp());
}

class ControlIotApp extends StatelessWidget {
  const ControlIotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
