

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

  // actionSheet
  Future<int> _showModelButtonSheet(){
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return ListView.builder(
            itemCount: 30,
            itemBuilder: (BuildContext context,int index){
              return ListTile(
                title: Text('$index'),
                onTap: () => Navigator.of(context).pop(index),
              );
            },

          );
        });
  }

  // 家在等待框


  void _diologOneAction () async {
    print('ONE');
    int type = await _showModelButtonSheet();
    print(type);
    // fo () async {
    //   int type = await _showModelButtonSheet();
    // };
  }

  void _diologTwoAction (){
    print('TWO');
    showDialog(
        context: context,
      barrierDismissible: true, // 点击遮罩不关闭
      builder: (context){
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(top: 26),
                child: Text('正在加载...'),

              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 8),
                child: FlatButton(
                  child: Text(
                    '关闭',
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
            
          ),
        );
      },
    );
  }

  void _dialogThreeAction (){
    print('THREE');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiaLog', style: TextStyle(
          color: Colors.red,
        ),),
      ),

      body: Container(
        alignment: Alignment.bottomCenter,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: _diologOneAction, //async{
                //   int type = await _showModelButtonSheet();
                //   print(type);
                // },
                child: Text(
                  '对话框1',
                ),
              ),
              FlatButton(
                  onPressed: _diologTwoAction,
                  child: Text(
                    '对话框2'
                  ),
              ),
              RaisedButton(onPressed: _dialogThreeAction,
                child: Text(
                  '对话框（复选框可点击）'
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}