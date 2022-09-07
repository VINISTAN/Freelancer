import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/dashboards/investments.dart';

import 'Appointment_approved.dart';



class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<Appointment>
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
                                  child: Text('Appointment Schedule',
                                      style: GoogleFonts.roboto(
                                          fontSize: 20.0,
                                          //  fontFamily: 'sans-serif-light',
                                          color: Colors.black)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 85.0),
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

                        Padding(
                          padding: const EdgeInsets.only(top:15,left: 5.0),
                          child: Text('To Schedule an Appointnment with Harshad Shinde Please select a Date ',
                              style: GoogleFonts.roboto(
                                  fontSize: 10.0,
                                  //  fontFamily: 'sans-serif-light',
                                  color: Colors.black)),

                        ),
]
        )
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
                            'Appointment Title *',
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
                    left: 25.0, right: 25.0, top: 2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: "Enter Title"),
                        enabled: !_status,
                      ),
                    ),
                  ],
                )),
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
                            'Start Date & Time *',
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
                    left: 25.0, right: 25.0, top: 2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: "Select Date and Time"),
                        enabled: !_status,
                      ),
                    ),
                  ],
                )),
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
                            'End Date & Time *',
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
                    left: 25.0, right: 25.0, top: 2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: "Select Date and Time"),
                        enabled: !_status,
                      ),
                    ),
                  ],
                )),
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
                            'Description *',
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
                    left: 25.0, right: 25.0, top: 2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: "Enter Description"),
                        enabled: !_status,
                      ),
                    ),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: "Amount to be paid"),
                        enabled: !_status,
                      ),
                    ),
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 35.0),

                  child: Row(

                    children: <Widget>[

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          onPrimary: Colors.white,
                          shadowColor: Colors.deepPurple,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          minimumSize: Size(310, 40), //////// HERE
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Approve()),
                          );
                        },
                        child: Text('Proceed'),
                      ),
              ]
                      )
                )
                ],
              ),
      )

            )
            ],
          ),
    ]
        )));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding:  EdgeInsets.only(right: 10.0),
              child:
                ElevatedButton(onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(FocusNode());
                  });
                },child: const Text("Save") ,)
              // RaisedButton(
              //   child: const Text("Save"),
              //   textColor: Colors.white,
              //   color: Colors.green,
              //   onPressed: () {
              //     setState(() {
              //       _status = true;
              //       FocusScope.of(context).requestFocus(FocusNode());
              //     });
              //   },
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(20.0)),
              // ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child:
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _status = true;
                      FocusScope.of(context).requestFocus(FocusNode());
                    });
                  },
                  child: const Text("Cancel"),
                )
              // RaisedButton(
              //   child: const Text("Cancel"),
              //   textColor: Colors.white,
              //   color: Colors.red,
              //   onPressed: () {
              //     setState(() {
              //       _status = true;
              //       FocusScope.of(context).requestFocus(FocusNode());
              //     });
              //   },
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(20.0)),
              // ),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return GestureDetector(
      child: const CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}