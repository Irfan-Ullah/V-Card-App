import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatelessWidget {
  final File logo;
  final String background;
  final String name;
  final String title;
  final String business;
  final String job;
  final String number;
  final String email;
  final String website;
  final String address;
  Card1(
      {this.logo,
      this.name,
      this.background,
      this.title,
      this.business,
      this.job,
      this.number,
      this.email,
      this.website,
      this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MyAppName",
          style: TextStyle(color: Colors.black),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      "$background",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  child: logo == null
                                      ? Text("image is fail")
                                      : Image.file(logo),
                                ),
                                Text(
                                  "$name",
                                  style: GoogleFonts.righteous(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.indigo[900])),
                                ),
                                Text(
                                  "$business",
                                  style: GoogleFonts.righteous(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.indigo[900])),
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
                                          fontSize: 12,
                                          color: Colors.indigo[900])),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "$number",
                                  style: GoogleFonts.righteous(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.indigo[900])),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "$email",
                                  style: GoogleFonts.righteous(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.indigo[900])),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            MaterialButton(
                onPressed: () {},
                child: Text(
                  "Save to Gallery",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.pink),
          ],
        ),
      ),
    );
  }
}
