import 'package:flutter/material.dart';
import 'package:exoplanet_mobile/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ini Toko Exoplanet',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.indigo),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: MyHomePage()
    );
  }
}

