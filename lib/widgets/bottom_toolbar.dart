import 'package:flutter/material.dart';
import 'package:tiktokclone/profile_page.dart';

class BottomToolbar extends StatelessWidget {
  static const double kBottomIconSize = 20.0;
  static const double CreateButtonWidth = 38.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 14.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.white,
                    size: kBottomIconSize,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 14.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: kBottomIconSize,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
            ),
            customeCreateIcon(),
            Container(
              margin: EdgeInsets.only(top: 14.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.chat,
                    color: Colors.white,
                    size: kBottomIconSize,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Profile();
                }));
              },
              child: Container(
                margin: EdgeInsets.only(top: 14.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: kBottomIconSize,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 10.0),
                    )
                  ],
                ),
              ),
            ),
          ]),
    );
  }

  Widget customeCreateIcon() {
    return Container(
        width: 45.0,
        height: 27.0,
        child: Stack(children: [
          Container(
              margin: EdgeInsets.only(left: 10.0),
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 45, 108),
                  borderRadius: BorderRadius.circular(7.0))),
          Container(
              margin: EdgeInsets.only(right: 10.0),
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 211, 234),
                  borderRadius: BorderRadius.circular(7.0))),
          Center(
              child: Container(
            height: double.infinity,
            width: CreateButtonWidth,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(7.0)),
            child: Icon(
              Icons.add,
              size: 20.0,
            ),
          )),
        ]));
  }
}
