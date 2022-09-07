import 'package:flutter/material.dart';
import 'package:moolah/coponents/constant.dart';
import 'loginscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    var d = const Duration(seconds: 10);
    // delayed 3 seconds to next page
    Future.delayed(d, () {
      // to next page and close this page
      // Navigator.pushAndRemoveUntil(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) {
      //       return Loginscreen();
      //     },
      //   ),
      //   (route) => false,
      // );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.png"),
                const SizedBox(
                  height: 51,
                ),
                Text(
                  "A Complete Client Centric \nPrivate Wealth Solution",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(fontSize: 24), color: textcolour),
                ),
                const SizedBox(
                  height: 63,
                ),
                Image.asset("assets/images/Splashscreen.png"),
                const SizedBox(
                  height: 83,
                ),
                Container(
                   decoration:BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  height: 45,
                  width: 343,
                 
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(textcolour)),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Loginscreen()),
                          ),
                      child: Text(
                        "Login/Sign-Up",
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
    );
  }
}
