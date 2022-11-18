import 'package:flutter/material.dart';
import 'package:random_color/utils/colors_util.dart';

/// The home page of the application.
class Home extends StatefulWidget {
  /// Default constructor
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color backgroundColor = Colors.lightBlue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Color Screen'),
      ),
      body: GestureDetector(
        onTap: changeBackgroundColor,
        child: Container(
          color: backgroundColor,
          child: const Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void changeBackgroundColor() {
    setState(() {
      backgroundColor = ColorsUtil.getRandomColor();
    });
  }
}
