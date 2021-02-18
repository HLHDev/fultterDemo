
import 'package:flutter/material.dart';


class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();

}

class _NewPageState extends State<NewPage> {
  int countt = 0;
  void _logBtnAc(){
    countt = countt + 2;
    print(countt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Container(
        //
        width: 100,
        height: 100,
        child: Image(
          width: 40,
          height: 40,
          image: AssetImage('lib/images/chazuo.png'),
          
        ),


        // 按钮
        // color: Colors.red,
        // // child: Text('who care'),
        // child: Center(
        //   child: RaisedButton(
        //     onPressed: _logBtnAc,
        //     child: Text(
        //       'kai shi',
        //       style: TextStyle(
        //         color: Colors.yellow,
        //       ),
        //
        //     ),
        //   ),

        // 文字
          // child: Text(
          //   'WHO CARE',
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 20,
          //   ),
          // ),
        // ),
      ),

      // 文字
      // body: Text(
      //   "WHO ARE YOU",
      //   style: TextStyle(
      //     color: Colors.red,
      //     backgroundColor: Colors.green,
      //
      //   ),
      // ),
    );
  }

}