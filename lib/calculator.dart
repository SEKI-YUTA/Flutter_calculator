import 'package:calculator/keyboard.dart';
import 'package:calculator/service/Theme_service.dart';
import 'package:calculator/text_field.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.grey.withOpacity(0.3),
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.nightlight),
          onPressed: () {
            ThemeService().switchTheme();
            print('pressed');
          },
        ),
      ),
      body: Container(
        child: Column(
          children: [MyTextField(), MyKeyboard()],
        ),
      ),
    );
  }
}
