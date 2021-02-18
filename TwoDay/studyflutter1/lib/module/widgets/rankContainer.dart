import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RankContainer extends StatelessWidget {

  final String title;
  final int rank;
  final double score;
  final double width;
  final double height;
  final double starWidth;

  RankContainer({
    Key key,
    this.title = '默认',
    this.rank,
    this.score,
    this.width,
    this.height,
    this.starWidth = 10,
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: this.width,
      height: this.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: this.width,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              softWrap: true, // 是否可收缩
              overflow: TextOverflow.ellipsis, // 收缩方式
            ),
          ),
          Container(
            width: this.width > 90 ? 90 : this.width,
            height: 14,
            child: Row(
              children: [
                Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        if (index < rank) {
                          return Image(
                            width: starWidth,
                            height: starWidth,
                            image: AssetImage('lib/images/setIcon.png'),
                          );
                        } else {
                          return Image(
                            width: starWidth,
                            height: starWidth,
                            image: AssetImage('lib/images/chazuo.png'),
                          );
                        }
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 2,
                        );
                      },
                    ),
                ),
                Text(
                  '$score',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
}