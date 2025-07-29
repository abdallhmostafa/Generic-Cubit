import 'package:flutter/material.dart';
import 'package:generic_cubit/home/home_view.dart';

void main() {
  runApp(const GenericApp());
}

class GenericApp extends StatelessWidget {
  const GenericApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generic Cubit Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.dark,
      home: HomeView()
    );
  }
}
