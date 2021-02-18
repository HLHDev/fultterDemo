import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studyflutter1/module/widgets/rankContainer.dart';

class MoreDetailItem extends StatelessWidget {

  void _onTapAction() {

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTapAction,
      child: Container(
        padding: EdgeInsets.only(left: 24, right: 24, top: 9),
        child: Row(
          children: [
            FadeInImage.assetNetwork(
              placeholder: 'lib/images/chazuo.png',
              height: 122,
              width: 80,
              image: 'https://q1.qlogo.cn/g?b=qq&k=0n5AZ9Ne4h3em8iboKu3sHg&s=100',
            ),
            Container(width: 14,),
            Column(
              children: [
                RankContainer(
                  width: 220,
                  height: 40,
                  rank: 4,
                  score: 8.9,
                  title: '近期',
                ),
                Container(height: 3,),
                Container(
                  width: 220,
                  child: Text(
                    '你啊厉害放假啊都快放假啊是龙卷风',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFF999999),
                    ),
                    maxLines: 5,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }

}