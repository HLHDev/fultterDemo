import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyflutter1/model/dModel.dart';
import 'package:studyflutter1/module/detailPage/detail_page.dart';
import 'package:studyflutter1/module/morePage/more_Page.dart';
import 'package:studyflutter1/module/widgets/displayItem.dart';

class HListViewItemPage extends StatelessWidget {

  final BuildContext context;
  final DoubanCategory category;

  HListViewItemPage({
    Key key,
    this.context,
    this.category = DoubanCategory.Movie
});

  void _moreActionRounte() {
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return MorePage(category: category,);
      }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      padding: EdgeInsets.only(left: 15),
      child: Column(
        children: [
          _configTitleItem(),
          Container(
            height: 10,
            // padding: EdgeInsets.only(top: 10),
          ),
          DisplayItem(),
        ],
      ),
    );
  }

  Widget _configTitleItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          DoubanModel.getDouBanTitle(category),
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        GestureDetector(

          child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text('更多', style: TextStyle(fontSize: 15, color: Colors.green),),
          ),
          onTap: _moreActionRounte,
        ),
      ],
    );
  }

}