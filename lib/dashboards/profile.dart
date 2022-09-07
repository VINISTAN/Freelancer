import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/Appointment_schedule.dart';
import 'package:moolah/dashboards/investments.dart';




class profilescreen extends StatefulWidget {
  const profilescreen({Key? key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<profilescreen>
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
                                          child: Text('My Profile',
                                              style: GoogleFonts.roboto(
                                                  fontSize: 20.0,
                                                  //  fontFamily: 'sans-serif-light',
                                                  color: Colors.black)),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 195.0),
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
                                          fontSize: 18.0,
                                          //  fontFamily: 'sans-serif-light',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),

                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top:5 ,left: 5.0),
                                  child: Text('Investor',
                                      style: GoogleFonts.roboto(
                                          fontSize: 13.0,
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
                                const Divider(
                                  height: 18,

                                  thickness: 1,
                                  indent: 18,
                                  endIndent: 3,
                                  color: Colors.black,
                                ),
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
                                                'My Personal Details',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16.0,fontWeight: FontWeight.bold,
                                                    //  fontFamily: 'sans-serif-light',
                                                    color: Colors.black)),


                                          ],
                                        ),

                                      ],
                                    )),
                                const Divider(
                                  height: 18,

                                  thickness: 1,
                                  indent: 18,
                                  endIndent: 3,
                                  color: Colors.black,
                                ),

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
                                                'Bank Account',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    //  fontFamily: 'sans-serif-light',
                                                    color: Colors.black)),
                                          ],
                                        ),

                                      ],
                                    )),
                                const Divider(
                                  height: 18,

                                  thickness: 1,
                                  indent: 18,
                                  endIndent: 3,
                                  color: Colors.black,
                                ),
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
                                                'Investment Accounts',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    //  fontFamily: 'sans-serif-light',
                                                    color: Colors.black)),
                                          ],
                                        ),

                                      ],
                                    )),
                                const Divider(
                                  height: 18,

                                  thickness: 1,
                                  indent: 18,
                                  endIndent: 3,
                                  color: Colors.black,
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, right: 25.0, top: 20.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[

                                    InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Appointment()),
                                      );
                                },
                                  child: new Padding(
                                    padding: new EdgeInsets.all(10.0),
                                    child: new Text(
                                        'My Appointments',
                                        style: GoogleFonts.roboto(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            //  fontFamily: 'sans-serif-light',
                                            color: Colors.black)),
                                  ),
                                )
                                          ],
                                        ),

                                      ],
                                    )),
                                const Divider(
                                  height: 18,

                                  thickness: 1,
                                  indent: 18,
                                  endIndent: 3,
                                  color: Colors.black,
                                ),


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
              padding: const EdgeInsets.only(right: 10.0),
              child:
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _status = true;
                      FocusScope.of(context).requestFocus(FocusNode());
                    });
                  },
                  child: const Text("Save"),
                )
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