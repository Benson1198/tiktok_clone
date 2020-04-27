import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Name'), centerTitle: true),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            child: Column(
              children: <Widget>[],
            ),
          );
        }),
      ),
    );
  }
}
