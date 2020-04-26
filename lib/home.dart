import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/video_description.dart';
import 'widgets/action_toolbar.dart';
import 'widgets/bottom_toolbar.dart';

class Home extends StatelessWidget {
  Widget get topSection => Container(
        height: 100.0,
        color: Colors.yellow[300],
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
      body: Column(
        children: <Widget>[topSection, middleSection, BottomToolbar()],
      ),
    );
  }
}
