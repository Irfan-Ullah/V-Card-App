import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker_saver/image_picker_saver.dart';
import 'package:visiting_card_app/Util/utils.dart';
import 'package:visiting_card_app/Widget/widgetToImage.dart';

class Card1 extends StatefulWidget {
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
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  GlobalKey key1;
  Uint8List bytes1;
  var save;
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                WidgetToImage(
                  builder: (key) {
                    this.key1 = key;
                    return Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            "${widget.background}",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, bottom: 20),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  child: widget.logo == null
                                      ? Text("")
                                      : Image.file(widget.logo),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${widget.name}",
                                      style: GoogleFonts.ptSans(
                                          textStyle: TextStyle(
                                              fontSize: 23,
                                              color: Colors.teal[900])),
                                    ),
                                    Text(
                                      "${widget.business}",
                                      style: GoogleFonts.ptSans(
                                          textStyle: TextStyle(
                                              fontSize: 14,
                                              color: Colors.teal[900])),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 41, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "${widget.email}",
                                  style: GoogleFonts.ptSans(
                                      textStyle: TextStyle(
                                          fontSize: 7,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal[900])),
                                ),
                                Text(
                                  "${widget.number}",
                                  style: GoogleFonts.ptSans(
                                      textStyle: TextStyle(
                                          fontSize: 10,
                                          color: Colors.teal[900])),
                                ),
                                Text(
                                  "${widget.email}",
                                  style: GoogleFonts.ptSans(
                                      textStyle: TextStyle(
                                          fontSize: 10,
                                          color: Colors.teal[900])),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 30),
                  child: MaterialButton(
                      onPressed: () async {
                        final bytes1 = await Utils.capture(key1);
                        setState(() {
                          this.bytes1 = bytes1;
                        });
                         save =
                            await ImagePickerSaver.saveFile(fileData: bytes1);
                      },
                      child: Text(
                        "Save to Gallery",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.pink),
                ),
               save!=null? Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                      width: 200,
                      child: Text(
                        "Your Card is Stored to Your Gallery",
                        style: GoogleFonts.kaushanScript(
                            textStyle:
                                TextStyle(fontSize: 20, color: Colors.grey)),
                        textAlign: TextAlign.center,
                      )),
                ):Container(width:200,child: Text("Click on \"Save to Gallery\" Button to save this Card!",style: GoogleFonts.righteous(textStyle:TextStyle(color: Colors.grey)),textAlign: TextAlign.center),),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(Uint8List bytes) =>
      bytes != null ? Image.memory(bytes) : Container();

}

// Container(
//                                   height: 80,
//                                   width: 80,
//                                   child: logo == null
//                                       ? Text("image is fail")
//                                       : Image.file(logo),
//                                 ),
