import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/Screens/splashscreen.dart';
import 'package:moolah/bottomscreen.dart';
import 'package:moolah/coponents/constant.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:http/http.dart' as http;
import '../PersonalDetails.dart';


class Otpscreen extends StatefulWidget {

  const Otpscreen(   {Key? key, required }) : super(key: key);

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
   OtpFieldController otpController = OtpFieldController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "OTP Verification",
            style: GoogleFonts.roboto(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        body: Center(
          child: Padding(
            padding:  EdgeInsets.only(top: 196),
            child: Column(children: [
              Text(
                "Enter the 6-digit number send to",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    color: Colors.black),
              ),
              SizedBox(height: 11),
              Text(
                "+91 8072*****2",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    color: Colors.black),
              ),
              SizedBox(height: 8),
              Text(
                "Change Mobile Number",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    color: textcolour),
              ),
              SizedBox(height: 6),
    
              Padding(
                padding: const EdgeInsets.only(left:80, right: 90),
                child: OTPTextField(
                controller: otpController,
                length: 6,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 30,
                fieldStyle: FieldStyle.underline,

                style: TextStyle(fontSize: 17, color: Colors.black, decorationColor: Colors.black),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                }),
              ),
    
               SizedBox(height: 44),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                height: 45,
                width: 343,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(textcolour)),
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Personaldetails()),
                      );


                    },
                    child: Text(
                      "Verify and Proceed",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700)),
                    )),
              ),
           
       
              SizedBox(height: 16),
    
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
            
                children: [
                  Text(
                    "Request new code in",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        textStyle:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        color: Colors.black),
                  ),
                    SizedBox(width: 4,),
                    Text(
                    "00:20",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        textStyle:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                        color: Colors.black,
                  ))
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
