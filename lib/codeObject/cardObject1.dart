import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardObject1 extends StatelessWidget {
  final String name;
  final String business;
  final String title;
  final String job;
  final String number;
  final String email;
  final String webSite;
  final String address;
  CardObject1({
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
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      name.toString(),
                      style: GoogleFonts.righteous(
                          textStyle: TextStyle(
                              fontSize: 20, color: Colors.indigo[900])),
                    ),
                    Text(
                      "$business",
                      style: GoogleFonts.righteous(
                          textStyle: TextStyle(
                              fontSize: 12, color: Colors.indigo[900])),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 50),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(top: 83),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$address",
                      style: GoogleFonts.righteous(
                          textStyle: TextStyle(
                              fontSize: 12, color: Colors.indigo[900])),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "$number",
                      style: GoogleFonts.righteous(
                          textStyle: TextStyle(
                              fontSize: 12, color: Colors.indigo[900])),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "$email",
                      style: GoogleFonts.righteous(
                          textStyle: TextStyle(
                              fontSize: 12, color: Colors.indigo[900])),
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
