import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moolah/coponents/constant.dart';
import 'package:moolah/coponents/performing.dart';

class Topperformingfunds2 extends StatefulWidget {
  const Topperformingfunds2({
    Key? key,
  }) : super(key: key);

  @override
  State<Topperformingfunds2> createState() => _TopperformingfundsState();
}

class _TopperformingfundsState extends State<Topperformingfunds2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          /*  Text(
              "Top Performing Funds",
              style:
              GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
            ),*/
         /*   Text(
              "3Y Returns",
              style:
              GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400),
            )*/
          ],
        ),

        const SizedBox(
          height: 16,
        ),

        FutureBuilder(builder: (context, index) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(parent: ClampingScrollPhysics()),
              itemCount: perform.length,
              itemBuilder: (context, i) {
                return Row(
                  children: [
                    SizedBox(
                      width: 268,
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            perform[i].bankterms,
                            style: GoogleFonts.roboto(
                                color: black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            perform[i].cap,
                            style: GoogleFonts.roboto(
                                color: cap,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            perform[i].percentage,
                            style: GoogleFonts.roboto(
                                color: percentage,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),

                        ],
                      ),

                    ),


                    const SizedBox(
                      height: 14,
                    ),
                    const Expanded(
                        child: Divider(
                          height: 1,
                        )),

                    const SizedBox(
                      height: 10,
                    )
                  ],
                );
              });
        })
      ],
    );
  }
}
