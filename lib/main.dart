import 'package:flutter/material.dart';
import 'package:solidsoftware_testproject/utils.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
              Text('Hello there', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
