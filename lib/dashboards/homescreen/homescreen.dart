import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/coponents/CardModel.dart';
import 'package:moolah/coponents/constant.dart';
import 'package:moolah/dashboards/Avisorscreens/advisor.dart';
import 'package:moolah/dashboards/homescreen/topperformingfunds.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(left: 16, top: 26, right: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Sumit,",
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),

              SizedBox(
                height: 149,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  // padding: EdgeInsets.only(left: 16, right: 6),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 299,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(cards[index].cardBackground),
                      ),
                      child: Stack(
                        children: <Widget>[
                           Positioned(
                             bottom: 35,
                             right: 25,
                             child:

                                Image.asset(cards[index].cardimage),
                           ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 19),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cards[index].heading,
                                  style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: white),
                                ),
                                const SizedBox(
                                  height: 19,
                                ),
                                Text(
                                  cards[index].discription,
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: white),
                                ),
                                const SizedBox(
                                  height: 29,
                                ),
                                SizedBox(
                                  height: 26,
                                  width:
                                      MediaQuery.of(context).size.width * 0.22,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(white)),
                                      onPressed: () {},
                                      child: Text(
                                        cards[index].buttonname,
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                                color: black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700)),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 45,
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 356,
                decoration: BoxDecoration(
                    color: searchboxgrey,
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 63, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Lets find your perfect \nMoolaah Partner here..!! ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Search Moolaah Partner",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                        SizedBox(
                          height: 170,
                          width: 170,
                          child: Image.asset("assets/images/Search Moolaah.png"),

                          //  Image.asset("assets/images/Serachboximg.png"),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          height: 45,
                          width: 173,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(textcolour)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Advisor()),
                                );
                              },
                              child: Text(
                                "Search",
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                        color: white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700)),
                              )),
                        ),
                      ],
                    ),
                  )
                ]),
              ),

              SizedBox(
                height: 29,
              ),

              Topperformingfunds()
              //  Row(
              //       children: map<Widget>(
              //         data,
              //         (index, selected) {
              //           return Container(
              //             alignment: Alignment.centerLeft,
              //             height: 9,
              //             width: 9,
              //             margin: EdgeInsets.only(right: 6),
              //             decoration: BoxDecoration(
              //                 shape: BoxShape.circle,
              //                 color: current == index
              //                     ? textcolour
              //                     : grey),
              //           );
              //         },
              //       ),
              //     ),
            ],
          ),
        ),
      ),
    );
  }
}

