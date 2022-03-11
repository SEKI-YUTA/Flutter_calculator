import 'package:calculator/input_button.dart';
import 'package:flutter/material.dart';

class MyKeyboard extends StatelessWidget {
  const MyKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Center(
        child: Container(
          color: Colors.grey[100],
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
            children: [
              '7',
              '8',
              '9',
              "/",
              "4",
              "5",
              "6",
              "*",
              "1",
              "2",
              "3",
              "-",
              "C",
              "0",
              "=",
              "+"
            ].map((key) {
              return GridTile(
                  child: MyButton(
                text: key,
              ));
            }).toList(),
          ),
        ),
      ),
    );
  }
}
