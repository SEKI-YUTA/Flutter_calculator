import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
          ),
        ),
        onTap: () {
          print('${text} tapped');
        },
      ),
    );
  }
}
