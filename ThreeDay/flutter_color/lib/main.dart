import 'package:flutter/material.dart';
import 'package:flutter_color/DialogPage.dart';
import 'package:flutter_color/NewPage.dart';
import 'package:flutter_color/combinationPage.dart';
import 'package:flutter_color/dateTimePage.dart';
import 'package:flutter_color/dragPage.dart';
import 'package:flutter_color/gesturePage.dart';
import 'package:flutter_color/girdViewPage.dart';
import 'package:flutter_color/gradientPage.dart';
import 'package:flutter_color/httpRequestPage.dart';
import 'package:flutter_color/listViewPage.dart';
import 'package:flutter_color/notificationPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return NewPage();
      }
    ));
    // setState(() {
    //   _counter++;
    // });
  }

  void _raisedAction() {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return DialogPage();
        }
    ));
  }

  void _dateRaisedAction() {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return DateTimePage();
        }
    ));
  }

  void _gestureRaisedAction() {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return GestureDetecatorPage();
        }
    ));
  }

  void _dragRaisedAction() {
    Navigator.push(
      context,
    PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 500), // 时间间隔 500毫秒
      pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation){
        return new FadeTransition(
          opacity: animation,
          child: DragPage(),
        );
      },
    ));
  }

  void _ListViewRaisedAction() {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return ListViewPage();
        }
    ));
  }

  void _GridlistViewRaisedAction() {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return GirdViewPage();
        }
    ));
  }

  void _GradientRaisedAction() {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return GradientPage();
        }
    ));
  }

  // 通知
  void _NotificaRaisedAction() {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return NotificationPage();
        }
    ));
  }

  //
  void _RequestRaisedAction() {
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return HttpRequestPage();
      }
    ));
  }

  void _CombinationRaisedAction() {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return CombinationPage();
        }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                color: Color(0xffdc380d),
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              onPressed: _raisedAction,
              child: Text(
                'alert',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            RaisedButton(
              onPressed: _dateRaisedAction,
              child: Text(
                '时间选择器',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            RaisedButton(
              onPressed: _gestureRaisedAction,
              child: Text(
                '手势',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            RaisedButton(
              onPressed: _dragRaisedAction,
              child: Text(
                '拖动',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            RaisedButton(
              onPressed: _ListViewRaisedAction,
              child: Text(
                '列表',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            RaisedButton(
              onPressed: _GridlistViewRaisedAction,
              child: Text(
                '列表2',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              ),
            ),
            RaisedButton(
              onPressed: _GradientRaisedAction,
              child: Text(
                '渐变',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              ),
            ),
            RaisedButton(
              onPressed: _NotificaRaisedAction,
              child: Text(
                '通知',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              ),
            ),
            RaisedButton(
              onPressed: _RequestRaisedAction,
              child: Text(
                '请求',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              ),
            ),
            RaisedButton(
              onPressed: _CombinationRaisedAction,
              child: Text(
                '组合',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),


      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
