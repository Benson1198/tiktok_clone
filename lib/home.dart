import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/video_description.dart';
import 'widgets/action_toolbar.dart';
import 'widgets/bottom_toolbar.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:video_player/video_player.dart';

class Home extends StatelessWidget {
  Widget get topSection => Container(
        alignment: Alignment(0.0, 1.0),
        height: 100.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Following', style: TextStyle(color: Colors.white)),
            Container(
              width: 15.0,
            ),
            Text('For You',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      );

  Widget get middleSection => Expanded(
          child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          VideoDescription(),
          ActionToolbar(),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[topSection, middleSection, BottomToolbar()],
      ),
    );
  }
}
