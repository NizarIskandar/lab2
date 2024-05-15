// TODO Implement this library.import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  const ColorBox({
    Key? key,
    required this.clr,
    required this.title,
  }) : super(key: key);
  final String title;
  final Color clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 750, //200
      height: 100, //50
      color: clr,
      child: Center(child: Text(title)),
    );
  }
}
