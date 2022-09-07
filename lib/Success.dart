import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/Confirmappointment.dart';
import 'package:moolah/Screens/splashscreen.dart';
import 'package:moolah/bottomscreen.dart';
import 'package:moolah/coponents/constant.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'Appointment_schedule.dart';


class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Success> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.white,

        body: Center(


          child: Padding(

            padding:  EdgeInsets.only(top: 156),
            child: Column(children: [
              Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: ExactAssetImage(
                          'assets/images/appointment_success.png'),
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(height: 13),
              Text(
                "Success!",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    textStyle:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.w400,),
                    color: Colors.black,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 11),
              Text(
                "You can now contact with your Moolaah partner",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    textStyle:
                    TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    color: Colors.black),
              ),




              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 25.0),

                child: Row(

                    children: <Widget>[


                      Padding(
                        padding: const EdgeInsets.only(
                            left: 3.0, right: 7.0, top: 8.0),
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
                                minimumSize: Size(300, 40), //////// HERE
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Appointment()),
                                );
                              },
                              child: Text('Begin Appointment'),
                            )
                          ],
                        ),),
                    ]
                ),

              ),
              SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
