import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyflutter1/module/public/app_util.dart';
import 'package:studyflutter1/module/widgets/rankContainer.dart';

class DisplayItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: _builderItem,
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              width: (AppUtil.screenwidth - 4*80 - 15 - 10)/3,
            );
          },
        ));
  }

  Widget _builderItem(BuildContext context, int index) {
    return GestureDetector(
        onTap: (){},
        child: Column(
          children: [
            FadeInImage.assetNetwork(
              placeholder: 'lib/images/chazuo.png',
              height: 112,
              width: 80,
              image: 'https://q1.qlogo.cn/g?b=qq&k=0n5AZ9Ne4h3em8iboKu3sHg&s=100',
            ),
            Container(height: 10,),
            RankContainer(
              width: 80,
              height: 34,
              rank: 4,
              score: 7.6,
            ),
          ],
        )
    );
  }

}