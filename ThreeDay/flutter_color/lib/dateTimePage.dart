
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimePage extends StatefulWidget {
  @override
  _DateTimePageState createState() => _DateTimePageState();

}

class _DateTimePageState extends State<DateTimePage> {

  Future<DateTime>_showDatePicker() {
    var date = DateTime.now();
    return showCupertinoModalPopup(
        context: context,
        builder: (ctx) {
          return SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              backgroundColor: Colors.white,
              mode: CupertinoDatePickerMode.dateAndTime,
              minimumDate: date,
              maximumDate: date.add(Duration(days: 30),
              ),
              maximumYear: date.year+1,
              onDateTimeChanged: (DateTime value){
                print(value);
              },
            ),
          );
        }
    );
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
        child: Center(
          child: Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () async {
                  DateTime date = await _showDatePicker();
                },
                child: Text(
                  '时间选择器',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}