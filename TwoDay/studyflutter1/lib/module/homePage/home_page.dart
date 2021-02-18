
import 'package:flutter/material.dart';
import 'package:studyflutter1/model/dModel.dart';
import 'package:studyflutter1/module/homePage/hListViewItem.dart';
import 'package:studyflutter1/module/morePage/more_Page.dart';
import 'package:studyflutter1/module/public/app_util.dart';
import 'package:studyflutter1/module/search/search_Page.dart';
import 'package:studyflutter1/module/widgets/rootPage.dart';
import 'package:studyflutter1/module/widgets/searchBar.dart';

// StatefulWidget 内部状态会发生改变
// StatelessWidget 内部状态不会发生改变

class HomePage extends StatefulWidget {
  @override
  _HomeState createState()=> _HomeState();
}

class _HomeState extends State<HomePage> {

  void _onTapGestureWd() {
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context){
      return SearchPage();
    }
    ));
  }

  void _onScanTextGestureAC() {
    print('扫一扫');
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return MorePage(
          category: DoubanCategory.Movie,
        );
      }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return RootPage(
      body: Stack(
        children: <Widget>[
          Container(),
          _configTopWidget(),
          _configBottomWidget(),
        ],
      ),
    );
  }

  Widget _configTopWidget() {
    return Container(
      height: 170,
      color: Color(0xFF33C9FF),
      child: SafeArea( // 抹平各个平台距离顶部的安全位置以及底部多余的空间
          child: Container(
            // width: 100,
            height: 52,
            alignment: Alignment.topCenter, // 居中位置
            padding: EdgeInsets.only(top: 20, left: 20, right: 20), // 设置边距
            // color: Colors.red,
            child: _configSearchBarWidget(),
          ),
      ),
    );
  }

  Widget _configBottomWidget() {
    return Positioned(
      top: 102,
      child: Container(
        width: AppUtil.screenwidth, // 屏幕的宽度
        height: AppUtil.screenHeight - 102,
        // color: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            HListViewItemPage(
              context: context,
              category: DoubanCategory.Movie,
            ),
            HListViewItemPage(
              context: context,
              category: DoubanCategory.Music,
            ),
            HListViewItemPage(
              context: context,
              category: DoubanCategory.Book,
            ),
            // Container(
            //   height: 100,
            //   color: Colors.lightBlue,
            // ),
            // Container(
            //   height: 100,
            //   color: Colors.redAccent,
            // ),
            // Container(
            //   height: 100,
            //   color: Colors.yellow,
            // ),
          ],
        ),
      ),
    );
  }

  Widget _configSearchBarWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: _onTapGestureWd,
          child: SearchBar(
            isEnabel: false,
          ),
        ),

        GestureDetector(
          onTap: _onScanTextGestureAC,
          child: Text(
            '扫一扫',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),


        // Image(
        //   width: 16,
        //   height: 16,
        //   image: AssetImage(''),
        // ),
      ],
    );
  }
}