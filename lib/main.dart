import 'package:flutter/material.dart';
import './colorBox.dart';
import 'dart:math';

void main() => runApp(const MyApp()); //runApp is a built in method

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 150,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 5),
        itemBuilder: (context, index) => ColorBox(
            clr: Color.fromARGB(255, Random().nextInt(256),
                Random().nextInt(256), Random().nextInt(256)),
            title: "Box ${index + 1}"),
      ),
    );
  }
}
