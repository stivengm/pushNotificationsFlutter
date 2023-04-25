import 'package:flutter/material.dart';
import 'package:push_notifications/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().getTheme(),
      home: Scaffold(
        body: Center(
          child: Text("Hola mundo"),
        ),
      )
    );
  }
}