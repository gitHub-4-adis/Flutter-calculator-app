import 'package:flutter/material.dart';
import 'buttons.dart';

class Rows extends StatefulWidget {
  const Rows({Key? key}) : super(key: key);

  @override
  State<Rows> createState() => _RowsState();
}

class _RowsState extends State<Rows> {
  String textToDisplay = "";
  String history = "";
  String operation = "";
  String num1 = '';
  String num2 = '';
  String res = '';

  void onClick(var str) {
    if (str == 'AC') {
      textToDisplay = '';
      history = '';
      num1 = '';
      num2 = '';
      res = '';
    } else if (str == 'C') {
      textToDisplay = '';
      num1 = '';
      num2 = '';
      res = '';
    } else if (str == '+' || str == '-' || str == 'x' || str == '/') {
      num1 = textToDisplay;
      num2 = '';
      operation = str;
      textToDisplay = num1.toString() + operation;
    } else if (str == '=') {
      if (operation == '+') {
        res = (int.parse(num1) + int.parse(num2)).toString();
      } else if (operation == '-') {
        res = (int.parse(num1) - int.parse(num2)).toString();
      } else if (operation == 'x') {
        res = (int.parse(num1) * int.parse(num2)).toString();
      } else {
        res = (int.parse(num1) / int.parse(num2)).toString();
      }
      num1 = res;
      num2 = '';
      history = textToDisplay;
      textToDisplay = res.toString();
    } else if (str == '<') {
      textToDisplay = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (str == '+/-') {
      if (textToDisplay[0] == '-') {
        textToDisplay = textToDisplay.substring(1);
      } else {
        textToDisplay = '-' + textToDisplay;
      }
    } else {
      num2 += str;
      textToDisplay += str;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.only(right: 10.0),
          alignment: Alignment.topRight,
          child: Text(
            history,
            style: const TextStyle(
              fontSize: 23,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.topRight,
          child: Text(
            textToDisplay,
            style: const TextStyle(
              fontSize: 70,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Button('AC', '0xFFA01F16', '0xFFFFFFFF', 24, onClick),
            Button('C', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('<', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('/', '0xFFFFEB3B', '0xFF000000', 24, onClick),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Button('7', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('8', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('9', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('x', '0xFFFFEB3B', '0xFF000000', 24, onClick),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Button('4', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('5', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('6', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('-', '0xFFFFEB3B', '0xFF000000', 24, onClick),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Button('1', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('2', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('3', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('+', '0xFFFFEB3B', '0xFF000000', 24, onClick),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Button('+/-', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('0', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('00', '0xFF80CBC4', '0xFF000000', 24, onClick),
            Button('=', '0xFFFFEB3B', '0xFF000000', 24, onClick),
          ],
        ),
      ],
    );
  }
}
