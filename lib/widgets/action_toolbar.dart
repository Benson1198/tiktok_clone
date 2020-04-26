import 'package:flutter/material.dart';

class ActionToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.red[300],
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getSocialAction(title: '3.2m', icon: Icons.thumb_up),
        _getSocialAction(title: '13.4k', icon: Icons.comment),
        _getSocialAction(
            title: 'Share', icon: Icons.mobile_screen_share, isShare: true),
      ]),
    );
  }

  Widget _getSocialAction({String title, IconData icon, bool isShare = false}) {
    return Container(
      width: 60.0,
      height: 60.0,
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: isShare ? 25.0 : 35.0,
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
}
