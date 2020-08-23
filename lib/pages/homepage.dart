import 'package:flutter/material.dart';
import './reminder_page.dart';
import 'package:baby_care/navigation/app_theme.dart';
import 'package:baby_care/navigation/invite_friend_screen.dart';
import 'package:baby_care/navigation/privacy.dart';
import 'package:baby_care/bottomnavigation/bottombar_app_theme.dart';
import 'package:baby_care/bottomnavigation/tabIcon_data.dart';
import 'package:baby_care/bottomnavigation/bottombar.dart';
import './mainpage.dart';
// class  MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppTheme.nearlyGrey,
//       child: Scaffold(
//         appBar: AppBar(
          
//           title: Text('Home', 
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
//           )
//         ),
//         backgroundColor: Colors.blueGrey,
//         body: Column(
//               children: <Widget>[
//                 Text('This is the Home page \n', 
//                 style: TextStyle(fontSize: 30)
//                 ),
//                 Text('Welcome to baby care homepage. feel free to send your comments and contact us by clicking on the contact us widget on the sidenav. \n we highly value you feedback and would like to improve our to cater for your needs.')
//               ],
            
        
//         ),
//       )
      
//     );
//   }

// }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with TickerProviderStateMixin {
  AnimationController animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: FintnessAppTheme.background,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = MyPrivacy();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FintnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0 || index == 2) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      MyPrivacy();
                });
              });
            } else if (index == 1 || index == 3) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      MainPageScreen();
                });
              });
            }
          },
        ),
      ],
    );
  }
}