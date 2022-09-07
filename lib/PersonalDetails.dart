import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/dashboards/investments.dart';

import 'Appointment_approved.dart';
import 'Registersuccess.dart';



class Personaldetails extends StatefulWidget {
  const Personaldetails({Key? key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<Personaldetails>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();
  late SingleValueDropDownController _cnt;
  final _text = TextEditingController();
  bool _validate = false;

  @override
  void initState() {
    _cnt = SingleValueDropDownController();
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
                          height: 70.0,
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
                                          child: Text('Enter your Personal Details',
                                              style: GoogleFonts.roboto(
                                                  fontSize: 20.0,fontWeight: FontWeight.bold,
                                                  //  fontFamily: 'sans-serif-light',
                                                  color: Colors.black)),
                                        ),

                                      ],
                                    )),




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
                                                'Name*',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 14.0,
                                                    //  fontFamily: 'sans-serif-light',
                                                    color: Colors.black)),
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
                                          child: TextField (
                                            controller: _text,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,

                                                hintText: 'Enter Your Name',
                                              errorText: _validate ? 'Name Can\'t Be Empty' : null,
                                            ),

                                          ),
                                        ),
                                      ],
                                    )),
                                const Divider(
                                  height: 15,

                                  thickness: 1,
                                  indent: 16,
                                  endIndent: 3,
                                  color: Colors.grey,
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
                                                'User Type*',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 14.0,
                                                    //  fontFamily: 'sans-serif-light',
                                                    color: Colors.black)),
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
                                          child:  DropDownTextField(
                                            // initialValue: "name4",
                                            singleController: _cnt,
                                            clearOption: false,
                                          //  enableSearch: true,
                                            validator: (value) {
                                              if (value == null) {
                                                return "Select Type";
                                              } else {
                                                return null;
                                              }
                                            },
                                            dropDownItemCount: 2,
                                            dropDownList: const [
                                              DropDownValueModel(name: 'Investor', value: "value1"),
                                              DropDownValueModel(
                                                  name: 'Advisor',
                                                  value: "value2",
                                              )
                                            ],
                                            onChanged: (val) {},
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
                                                'PAN Number*',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 14.0,
                                                    //  fontFamily: 'sans-serif-light',
                                                    color: Colors.black)),
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
                                          child: TextField (
                                            decoration: InputDecoration(
                                                border: InputBorder.none,

                                                hintText: 'Enter Your PAN Number'
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                const Divider(
                                  height: 15,

                                  thickness: 1,
                                  indent: 16,
                                  endIndent: 3,
                                  color: Colors.grey,
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
                                                'Email*',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 14.0,
                                                    //  fontFamily: 'sans-serif-light',
                                                    color: Colors.black)),
                                          ],
                                        ),

                                      ],
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, right: 25.0, top: 2.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const <Widget>[
                                        Flexible(
                                          child: TextField (
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'Enter Your Mail'
                                            ),
                                          ),

                                        ),
                                      ],
                                    )),
                                const Divider(
                                  height: 15,

                                  thickness: 1,
                                  indent: 16,
                                  endIndent: 3,
                                  color: Colors.grey,
                                ),
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
                                              setState(() {
                                                _text.text.isEmpty ? _validate = true : _validate = false;
                                              });
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => Success()),
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


  }
