import 'package:flutter/material.dart';

import 'animated_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Animation - Animated Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Center(
          child: AnimatedButton(
            onTap:(){
              print("Animated button pressed");
            },
            animationDuration: const Duration(milliseconds: 2000),
            initialText: "Confirm",
            finalText: "Submitted",
            iconData: Icons.check,
            iconSize: 32.0,
            buttonStyle: ButtonStyle(
              borderRadius: 10.0,
              primaryColor: Colors.green.shade600,
              secondaryColor: Colors.white,
              elevation: 20.0,
              initialTextStyle: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
              finalTextStyle: TextStyle(
                fontSize: 24.0,
                color: Colors.green.shade600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
