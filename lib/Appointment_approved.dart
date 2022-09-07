import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/Confirmappointment.dart';
import 'package:moolah/Screens/splashscreen.dart';
import 'package:moolah/bottomscreen.dart';
import 'package:moolah/coponents/constant.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'Appointment_schedule.dart';
import 'Success.dart';


class Approve extends StatefulWidget {
  const Approve({Key? key}) : super(key: key);

  @override
  State<Approve> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Approve> {
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
              SizedBox(height: 11),
              Text(
                "Your Appointment with",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    textStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    color: Colors.black),
              ),
              SizedBox(height: 11),
              Text(
                "Harshad Shinde is Successful",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    textStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    color: Colors.black),
              ),
              SizedBox(height: 32),

              Text(
                "Your Timeslot",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    decoration: TextDecoration.underline,
                    textStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    color: textcolour),
              ),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(left: 80, right: 80),
                child: Column(children: [
                Text(
                  "07/07/2022 10:30 am to 11:00 am",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      textStyle:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                      color: Colors.black),
                ),
                  SizedBox(height: 32),

                  Text(
                    "Amount to be paid",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        decoration: TextDecoration.underline,
                        textStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                        color: textcolour),
                  ),
                  SizedBox(height: 12),

                  Text(
                    "₹ 350.00",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        decoration: TextDecoration.underline,
                        textStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                        color: textcolour),
                  ),
                ]
              ),
              ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25.0, top: 25.0),

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
              child: Text('Pay Later'),
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
                      minimumSize: Size(140, 40), //////// HERE
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Success()),
                      );
                    },
                    child: Text('Pay Now'),
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
