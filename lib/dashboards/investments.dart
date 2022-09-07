import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../topperforming2.dart';
import 'homescreen/topperformingfunds.dart';

class Investments extends StatefulWidget {
  const Investments({ Key? key }) : super(key: key);

  @override
  State<Investments> createState() => _InvestmentsState();
}

class _InvestmentsState extends State<Investments> {
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
                    height: 750.0,
                    color: Colors.white,
                        child: new SingleChildScrollView(
                            child: new Column(
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
                      child: Text('My Investments',
                      style: GoogleFonts.roboto(
                      fontSize: 20.0,fontWeight: FontWeight.w600,
                      //  fontFamily: 'sans-serif-light',
                      color: Colors.black)),
                      ),
                      const Padding(
                      padding: EdgeInsets.only(left: 150.0),

                      )

                      ]
                      )
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:45,left: 5.0,right: 180),
                        child: Text('Suggested Products',
                            style: GoogleFonts.roboto(
                                fontSize: 17.0,fontWeight: FontWeight.w400,
                                //  fontFamily: 'sans-serif-light',
                                color: Colors.black)),

                      ),
                        const Padding(

                            padding: EdgeInsets.only(top:20,left: 15.0),
                            child: Topperformingfunds2()
                        )

                      ]

                      )

                      ),

                    )

                      ]
                          )
                              ]
                      )
                          )
                      );
                    }
                  }