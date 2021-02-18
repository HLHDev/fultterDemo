
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: AlertDialog(
          title: Text('提示'),
          content: Text('您确定要删除当前文件吗？'),
          actions: <Widget>[
            FlatButton(
                onPressed: ()=> Navigator.of(context).pop(), // 关闭对话框
                child: Text('取消')
            ),
            FlatButton(
                onPressed: (){
                  print('确定');
                  // Navigator.of(context).pop(true); // 关闭对话框
                  Navigator.pop(context);
                },
                child: Text('确定'),
            ),
          ],
        ),
      ),
    );
  }
}

// class NavBar extends StatelessWidget {
//
//   final String title;
//   final Color color;
//
//   NavBar({
//     Key key,
//     this.title,
//     this.color,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: BoxConstraints(
//         minHeight: 52,
//         minWidth: double.infinity,
//       ),
//     );
//   }
//
//
// }