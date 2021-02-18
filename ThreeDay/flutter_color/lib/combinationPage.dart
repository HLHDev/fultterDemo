import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CombinationPage extends StatefulWidget {
  @override
  CombinationState createState() => CombinationState();
}

class CombinationState extends State<CombinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('组合'),
      ),
      body: Container(),
    );
  }

}


class CircleProgressPaint extends CustomPaint {
  final double progress;
  final Color primaryColor;
  final Color bgColor;
  final double proWidth;

  CircleProgressPaint(
    this.progress,
    this.primaryColor,
    this.bgColor,
    this.proWidth
);

  @override
  void paint(Canvas canvas, Size size) {
    final primaryWidth = proWidth;

  }
}