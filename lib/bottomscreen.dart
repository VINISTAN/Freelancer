import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moolah/coponents/constant.dart';
import 'package:moolah/dashboards/Avisorscreens/advisor.dart';
import 'package:moolah/dashboards/chat.dart';
import 'package:moolah/dashboards/homescreen/homescreen.dart';
import 'package:moolah/dashboards/investments.dart';
import 'package:moolah/dashboards/profile.dart';

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int currentTab = 0;

  static List<Widget> _screen = <Widget>[
    Homescreen(),
    Investments(),
    Advisor(),
    Chatscreen(),
    profilescreen()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Homescreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
       focusElevation: 3,
        backgroundColor: textcolour,
        child: Icon(Icons.wb_incandescent_sharp),
        onPressed: () {
          setState(() {
            currentScreen = Advisor();
            currentTab = 4;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,

        child: Container(

           height: 60,
   //     width: 100,
         // width: MediaQuery.of(context).size.width - 100.0,


            child: Padding(
              padding: const EdgeInsets.only(left:1.0,right: 1.0),
              child: Row(

         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = Homescreen();
                            currentTab = 0;
                          });
                        },

                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home, color: currentTab == 0 ? black : grey),
                            Text(
                              "Home",
                              style: TextStyle(
                                  color:
                                      currentTab == 0 ? Colors.black : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        height: 10,
                        minWidth: 10,
                        onPressed: () {
                          setState(() {
                            currentScreen = Investments();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.bar_chart_outlined,
                                color: currentTab == 1 ? black : grey),
                            Text(
                              "Investments",
                              style: TextStyle(
                                  color:
                                      currentTab == 1 ? Colors.black : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = Chatscreen();
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.chat, color: currentTab == 3 ? black : grey),
                            Text(
                              "Chat",
                              style: TextStyle(
                                  color:
                                      currentTab == 3 ? Colors.black : Colors.grey),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:1.0,right:1.0),
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              currentScreen = profilescreen();
                              currentTab = 4;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.account_circle_outlined,
                                  color: currentTab == 4 ? black : grey),
                              Text(
                                "Profile",
                                style: TextStyle(
                                    color:
                                        currentTab == 4 ? Colors.black : Colors.grey),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
            ),
          )
        )
      );


  }
}
