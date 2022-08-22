import 'package:calculator/rows.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          title: const Text("Flutter Calculator"),
        ),
        backgroundColor: Colors.indigo[300],
        body: Container(
          height: double.infinity,
          // color: Colors.black,
          padding: const EdgeInsets.all(5.0),
          child: const Rows(),
        ),
      ),
    );
  }
}
