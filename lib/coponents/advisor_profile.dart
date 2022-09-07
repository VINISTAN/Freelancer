import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/dashboards/investments.dart';

import '../Appointment_schedule.dart';
import '../chatDetailPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 22.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                  size: 22.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('Advisor Profile',
                                      style: GoogleFonts.roboto(
                                          fontSize: 20.0,
                                        //  fontFamily: 'sans-serif-light',
                                          color: Colors.black)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 150.0),
                                  child: Icon(
                                    Icons.question_mark_rounded,
                                    color: Colors.purple,
                                    size: 22.0,
                                  ),
                                )
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Stack(fit: StackFit.loose, children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: ExactAssetImage(
                                            'assets/images/avatar1.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ],
                            ),

                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:15,left: 5.0),
                          child: Text('Harshad Shinde',
                              style: GoogleFonts.roboto(
                                  fontSize: 15.0,
                                  //  fontFamily: 'sans-serif-light',
                                  color: Colors.black)),

                        ),

                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xffFFFFFF),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        'Categories Served',
                                          style: GoogleFonts.roboto(
                                              fontSize: 14.0,
                                              //  fontFamily: 'sans-serif-light',
                                              color: Colors.grey)),
                                    ],
                                  ),

                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: const <Widget>[
                                      Text(
                                        'Mutual Funds | Equity | Bonds',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )),

                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        'Experience',
                                          style: GoogleFonts.roboto(
                                              fontSize: 14.0,
                                              //  fontFamily: 'sans-serif-light',
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 7.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: const <Widget>[
                                  Flexible(
                                    child:    Text(
                                '12 Years',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              )),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        'About Harshad Shinde',
                                          style: GoogleFonts.roboto(
                                              fontSize: 14.0,
                                              //  fontFamily: 'sans-serif-light',
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 7.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: const <Widget>[
                                  Flexible(
                                    child:  Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    ),
                              ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                        'Address',
                                        style: GoogleFonts.roboto(
                                            fontSize: 14.0,
                                            //  fontFamily: 'sans-serif-light',
                                            color: Colors.grey)),

                                //    flex: 2,
                                  ),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0,top: 2.0),
                                      child:  Text(
                                        'Borivali (W) ',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            ),
                                      )),
                                    ),
                                   // flex: 2,


                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 11.0),

                            child: Row(

                              children: <Widget>[

                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.deepPurple,
                                     shadowColor: Colors.deepPurple,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0)),
                                    minimumSize: Size(140, 40), //////// HERE
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Appointment()),
                                    );
                                  },
                                  child: const Text('Fix Appointment'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 23.0, right: 7.0, top: 1.0),
                                  child: Row(
                                    children: <Widget>[
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.deepPurple,
                                          onPrimary: Colors.white,
                                        //  shadowColor: Colors.greenAccent,
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5.0)),
                                          minimumSize: const Size(140, 40), //////// HERE
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ChatDetailPage()),
                                          );
                                        },
                                        child: const Text('Chat Partner'),
                                      )
                              ],
                            ),),
                    //      !_status ? _getActionButtons() : new Container(),
                        ],
                      ),
                    ),
]
                  )
                    )
                  )
                ],
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }


  }
