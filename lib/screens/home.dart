import 'package:flutter/material.dart';
import 'package:random_color/utils/colors_util.dart';

/// The home page of the application.
class Home extends StatefulWidget {
  /// Generates random color
  final ColorsUtil colorsUtil;

  /// Default constructor
  const Home({
    Key? key,
    this.colorsUtil = const ColorsUtil(),
  }) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

/// Home state
class HomeState extends State<Home> {
  /// Background color of the Home screen
  Color backgroundColor = Colors.lightBlue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Color Screen'),
      ),
      body: GestureDetector(
        onTap: changeBackgroundColor,
        child: AnimatedContainer(
          color: backgroundColor,
          duration: const Duration(milliseconds: 300),
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

  /// Changes background color of the Home screen
  void changeBackgroundColor() {
    setState(() {
      backgroundColor = widget.colorsUtil.getRandomColor();
    });
  }
}
