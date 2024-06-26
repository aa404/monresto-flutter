import 'package:flutter/material.dart';

import 'layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mon Resto',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
          fontFamily: 'Montserrat',
          colorSchemeSeed: Colors.blue,
          brightness: Brightness.dark),
      home: const MyLayout(title: 'Mon Resto'),
    );
  }
}
