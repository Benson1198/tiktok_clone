import 'package:flutter/material.dart';

class ActionToolbar extends StatelessWidget {
  static const double kActionWidgetSize = 60.0;

  static const double kActionIconSize = 35.0;

  static const double kShareActionIconSize = 25.0;

  static const double kProfileImageSize = 50.0;

  static const double kPlusIconSize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getFollowAction(),
        _getSocialAction(title: '3.2m', icon: Icons.thumb_up),
        _getSocialAction(title: '13.4k', icon: Icons.comment),
        _getSocialAction(
            title: 'Share', icon: Icons.mobile_screen_share, isShare: true),
        _getMusicPlayerAction(),
      ]),
    );
  }

  Widget _getSocialAction({String title, IconData icon, bool isShare = false}) {
    return Container(
      width: kActionWidgetSize,
      height: kActionWidgetSize,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: isShare ? kShareActionIconSize : kActionIconSize,
            color: Colors.grey[300],
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getFollowAction() {
    return Container(
      width: kActionWidgetSize,
      height: kActionWidgetSize,
      child: Stack(
        children: [_getProfilePicture(), _getPlusIcon()],
      ),
    );
  }

  Widget _getProfilePicture() {
    return Positioned(
        left: ((kActionWidgetSize / 2) - (kProfileImageSize / 2)),
        child: Container(
          height: kProfileImageSize,
          width: kProfileImageSize,
          padding: EdgeInsets.all(1.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(kProfileImageSize / 2),
          ),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1200px-Circle-icons-profile.svg.png',
          ),
        ));
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ((kActionWidgetSize / 2) - (kPlusIconSize / 2)),
      child: Container(
        width: kPlusIconSize,
        height: kPlusIconSize,
        decoration: BoxDecoration(
            color: Colors.red[300], borderRadius: BorderRadius.circular(15.0)),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20.0,
        ),
      ),
    );
  }

  LinearGradient get musicGradient => LinearGradient(colors: [
        Colors.grey[800],
        Colors.grey[900],
        Colors.grey[900],
        Colors.grey[800]
      ], begin: Alignment.topLeft, end: Alignment.bottomRight);

  Widget _getMusicPlayerAction() {
    return Container(
      width: kActionWidgetSize,
      height: kActionWidgetSize,
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(11.0),
            height: kProfileImageSize,
            width: kProfileImageSize,
            decoration: BoxDecoration(
              gradient: musicGradient,
              borderRadius: BorderRadius.circular(kProfileImageSize / 2),
            ),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1200px-Circle-icons-profile.svg.png',
            ),
          )
        ],
      ),
    );
  }
}
