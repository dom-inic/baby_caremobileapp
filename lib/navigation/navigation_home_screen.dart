import './app_theme.dart';
import './drawer_user_controller.dart';
import './home_drawer.dart';
import './feedback_screen.dart';
import './help_screen.dart';
import 'package:baby_care/pages/homepage.dart';
import './invite_friend_screen.dart';
import 'package:flutter/material.dart';
import './privacy.dart';
import 'package:baby_care/navigation/about.dart';
import 'package:baby_care/navigation/contact.dart';
import 'package:baby_care/navigation/blog.dart';

class NavigationHomeScreen extends StatefulWidget {
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;
  AnimationController sliderAnimationController;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView =  HomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyBlack,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyBlack,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            animationController: (AnimationController animationController) {
              sliderAnimationController = animationController;
            },
            // onDrawerCall: (DrawerIndex drawerIndexdata) {
            //   changeIndex( drawerIndexdata);
            //
            onDrawerCall: (drawerIndexdata) {
              changeIndex(drawerIndexdata);
            },
            screenView: screenView,
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = HomeScreen();
        });
      } else if (drawerIndex == DrawerIndex.Help) {
        setState(() {
          screenView = HelpScreen();
        });
      } else if (drawerIndex == DrawerIndex.FeedBack) {
        setState(() {
          screenView = FeedbackScreen();
        });
      } else if (drawerIndex == DrawerIndex.Invite) {
        setState(() {
          screenView = InviteFriend();
        });
      
      } else if (drawerIndex == DrawerIndex.Share){
        setState(() {
          screenView = InviteFriend();
        });
        //do in your way......
      } else if (drawerIndex == DrawerIndex.Blog){
        setState(() {
          screenView = OurBlog();
        });
      } else if (drawerIndex == DrawerIndex.Contact){
        setState(() {
          screenView = ContactUs();
        });

      } else if (drawerIndex == DrawerIndex.About){
        setState(() {
          screenView = AboutUs();
        });
      } else if (drawerIndex == DrawerIndex.Privacy) {
        setState(() {
          screenView = MyPrivacy();
        });
      }
    }
  }
}
