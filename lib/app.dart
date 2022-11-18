import 'package:flutter/material.dart';
import 'package:random_color/screens/Home.dart';

/// The root of the application.
class App extends StatelessWidget {
  /// Default constructor
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
