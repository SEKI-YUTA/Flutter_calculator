import 'dart:async';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MyTextField extends StatefulWidget {
  MyTextField({Key? key}) : super(key: key);
  static final _controller = StreamController<String>();
  static StreamController get controller => _controller;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String _expression = "";

  @override
  void initState() {
    super.initState();
    MyTextField.controller.stream.listen((event) {
      _UpdateText(event);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              _expression,
              style: TextStyle(fontSize: 30),
            )),
      ),
    );
  }

  void _UpdateText(String letter) {
    setState(() {
      if (letter == "=") {
        // 計算処理
        Parser p = Parser();
        try {
          Expression exp = p.parse(_expression);
          double result = exp.evaluate(EvaluationType.REAL, ContextModel());
          print(result);
          _expression = "";
        } catch (e) {
          print('wpps!');
          print(e);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('式に誤りがあります')));
        }
      } else if (letter == "C") {
        _expression = "";
      } else {
        _expression += letter;
      }
    });
  }
}
