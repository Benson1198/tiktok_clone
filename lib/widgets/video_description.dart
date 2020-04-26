import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 70.0,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '@Bensonpx',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Video Title'),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                size: 15.0,
              ),
              Text(
                'Artist Name- Songname',
                style: TextStyle(fontSize: 15.0),
              )
            ],
          )
        ],
      ),
    ));
  }
}
