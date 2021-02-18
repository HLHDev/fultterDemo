
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DragPage extends StatefulWidget {
  @override
  DragPageState createState() => DragPageState();

}

class DragPageState extends State<DragPage> with SingleTickerProviderStateMixin {
  double _top = 0.0;
  double _left = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('拖动'),
        backgroundColor: Colors.cyan,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
              top: _top,
              left: _left,
              child: GestureDetector(
                child: CircleAvatar(
                  child: Text(
                    'A',
                  ),
                ),
                onPanDown: (DragDownDetails e){
                  print('用户按下：${e.globalPosition}');
                },
                onPanUpdate: (DragUpdateDetails e){
                  setState(() {
                    _left += e.delta.dx;
                    _top += e.delta.dy;
                  });
                },
                onPanEnd: (DragEndDetails e) {
                  print(e.velocity);
                },
              ),
          ),
        ],
      ),
    );
  }

}