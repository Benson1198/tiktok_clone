import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/video_description.dart';
import 'widgets/action_toolbar.dart';
import 'widgets/bottom_toolbar.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  VideoPlayerController _controller;

//

//  Widget get topSection => Container(
//    alignment: Alignment(0.0, 1.0),
//    height: 100.0,
//    child: Row(
//      crossAxisAlignment: CrossAxisAlignment.end,
//      mainAxisSize: MainAxisSize.min,
//      children: <Widget>[
//        Text('Following', style: TextStyle(color: Colors.white)),
//        Container(
//          width: 15.0,
//        ),
//        Text('For You',
//            style: TextStyle(
//                color: Colors.white,
//                fontSize: 17.0,
//                fontWeight: FontWeight.bold)),
//      ],
//    ),
//  );

  Widget get topSection => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
        child: Stack(
          children: <Widget>[
            topSection,
            Stack(
              children: <Widget>[
                VideoPlayer(_controller),
//              bottom: 50.0,
//              height: 200.0,
//              width: 200.0,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: 700.0,
                    ),
                    VideoDescription(),
                    ActionToolbar(),
                  ],
                ),
              ],
              overflow: Overflow.clip,
            ),
          ],
        ),
      );

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset("videos/vid2.mp4")
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[topSection, middleSection, BottomToolbar()],
      ),
    );
  }
}
