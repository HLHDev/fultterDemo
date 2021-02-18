import 'package:flutter/material.dart';
import 'package:studyflutter1/NewPage.dart';
import 'package:studyflutter1/model/dModel.dart';
import 'package:studyflutter1/module/homePage/home_page.dart';
import 'package:studyflutter1/module/morePage/more_Page.dart';
import 'package:studyflutter1/module/navigation_bar/navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationBarPage(),

    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     Navigator.push(context, MaterialPageRoute(
//       builder: (BuildContext context){
//         // return MorePage(category: DoubanCategory.Book,);
//         // return NewRoutePage(text: 'hh',backgroundColor: Colors.blue,);
//         return NewPage();
//       }
//     ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               height: 120,
//               width: 120,
//               color: Colors.blue[50],
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: FlutterLogo(
//                   size: 60,
//                 ),
//               ),
//             ),
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//
//     );
//   }
// }
//
//
// class NewRoutePage extends StatelessWidget{
//   final String text;
//   final Color backgroundColor;
//
//   NewRoutePage ({
//     Key key,
//     this.text,
//     this.backgroundColor
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         color: backgroundColor,
//         child: Text(text),
//       ),
//     );
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text("New Page"),
//     //   ),
//     //   body: Center(
//     //     child: Text("This is Flutter"),
//     //   ),
//     // );
//   }
//
// }