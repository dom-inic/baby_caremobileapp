
import 'package:flutter/material.dart';
import 'package:baby_care/navigation/navigation_home_screen.dart';

class ChangePw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('change password'),
          actions: <Widget>[
            Icon(Icons.list)
          ],
        ),
        body: ListView(
          children: <Widget>[
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigationHomeScreen())
              );
            }, child: null)
          ]
        ),
      ),
      
    );
  }
}