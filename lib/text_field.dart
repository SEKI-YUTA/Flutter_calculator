import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              '1+1',
              style: TextStyle(fontSize: 30),
            )),
      ),
    );
  }
}
