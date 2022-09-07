import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/Screens/otpscreen.dart';
import 'package:moolah/coponents/constant.dart';
import 'package:http/http.dart' as http;



class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final mobileNoController = TextEditingController();
  var data;


  Future<void> getData() async {
    http.Response response =
    await http.get(Uri.parse('https://wealth.moolaah.com/auth/login_av/${mobileNoController.text}'));
    if (response.statusCode == 200) {
      data = response.body;
      print(response.body);

    }

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                margin: const EdgeInsets.only(top: 196),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Enter Mobile number \nfor Login / Registration",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(fontSize: 22)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 47,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Mobile number',
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children:  [
                        SizedBox(
                            width:28,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                 hintText: "+91",
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey), //<-- SEE HERE
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 11,
                        ),
                        SizedBox(
                            width: 271,
                            child: TextField(
                              controller: mobileNoController,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: "98XXXXXXXX",
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey), //<-- SEE HERE
                                ),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      height: 45,
                      width: 343,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(textcolour)),
                    onPressed: () {
                      getData();

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Otpscreen()),
                      );
                    },
                          child: Text(
                            "Get OTP",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700)),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
    ]
        ),


      ),
    );



  }
}
