import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // const Button({Key? key}) : super(key: key);

  final String text;
  final String fillColor;
  final String textColor;
  final double textSize;
  final Function callBack;

  const Button(this.text, this.fillColor, this.textColor, this.textSize, this.callBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        child: TextButton(
          onPressed: () => callBack(text),
          style: TextButton.styleFrom(
            primary: Color(int.parse(textColor)),
            backgroundColor: Color(int.parse(fillColor)),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}
