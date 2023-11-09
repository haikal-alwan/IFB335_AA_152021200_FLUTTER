import 'package:flutter/material.dart';
import 'package:utspemmob/screens/DashboardScreen1.dart';
import 'package:utspemmob/screens/Info.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MyApp Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Info(),
      ),
    );
  }
}
