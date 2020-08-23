import 'package:flutter/material.dart';
import 'package:baby_care/navigation/app_theme.dart';

class ReminderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Reminders')
          ),
          backgroundColor: AppTheme.nearlyBlack,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                  left: 16,
                  right: 16),
                child: Icon(Icons.child_care)
                ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'you can set reminders for clinic days. the app will send notifications reminding you of clinic days that you has set. \n addition to that you can create a store of some of the medicines that the baby should be given and the dosage. \n you can also create a routine of activities that should be done and their specific days.  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 17, 
                  ),
                )
              ),  
            ]
              ),
        )
            
          ),
        );
        
  }
}