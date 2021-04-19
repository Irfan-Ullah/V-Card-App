import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class CardObject2 extends StatelessWidget {
  final String name;
  final String business;
  final String title;
  final String job;
  final String number;
  final String email;
  final String webSite;
  final String address;
  CardObject2({
    this.name = "Your Name",
    this.address = "Your Address",
    this.business = "About Business",
    this.email = "Type Email here",
    this.job = "Your Job",
    this.number = "Cell No",
    this.title = "Title",
    this.webSite = "Website is here",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(top:90,right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "$address",
                      style: GoogleFonts.play(
                          textStyle: TextStyle(color: Colors.white),
                          fontSize: 12),
                    ),
                    SizedBox(height:10),
                    Text(
                      "$number",
                      style: GoogleFonts.play(
                          textStyle: TextStyle(color: Colors.white),
                          fontSize: 12),
                    ),
                    SizedBox(height:10),
                    Text(
                      "$email",
                      style: GoogleFonts.play(
                          textStyle: TextStyle(color: Colors.white),
                          fontSize: 12),
                    ),
                    SizedBox(height:10),
                    Text(
                      "$webSite",
                      style: GoogleFonts.play(
                          textStyle: TextStyle(color: Colors.white),
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(right:20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "$name",
                      style: GoogleFonts.bebasNeue(
                          textStyle: TextStyle(color: Colors.black),
                          fontSize: 33),
                    ),
                    Text(
                      "$business",
                      style: GoogleFonts.play(
                          textStyle: TextStyle(color: Colors.black),
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
