import 'package:flutter/material.dart';
import 'package:solidsoftware_testproject/constants.dart';
import 'package:solidsoftware_testproject/utils.dart';

void main() {
  runApp(const Main());
}

/// Entry point of the application
class Main extends StatelessWidget {
  /// Initializes the class
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Solid Software Flutter Test Application',
      home: MyHomePage(
        title: 'Solid Software Flutter Test Application Home Page',
      ),
    );
  }
}

/// The HomePage class
class MyHomePage extends StatefulWidget {
  /// Initializes the class
  const MyHomePage({required this.title, super.key});

  /// The title of the application
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColour = generateRandomColor();

  void _randomizeBackgroundColor() {
    setState(() {
      _backgroundColour = generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColour,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _randomizeBackgroundColor,
        child: const Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text(
                'Hello there',
                style: TextStyle(fontSize: greetingMessageFontSize),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
