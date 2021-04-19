import 'package:flutter/material.dart';
import 'package:visiting_card_app/Model/codeModel.dart';
//import 'package:visiting_card_app/Model/codeModel.dart';
import 'package:visiting_card_app/Screen/cardDataEntryForm.dart';
import 'package:visiting_card_app/codeObject/cardObject1.dart';
import 'package:visiting_card_app/codeObject/cardObject2.dart';
//import 'package:visiting_card_app/codeObject/cardObject1.dart';
//import 'package:visiting_card_app/codeObject/cardObject2.dart';

class CardData extends StatefulWidget {
  final String name;
  final String imagePath;
  final String title;
  final String business;
  final String job;
  final String number;
  final String email;
  final String webSite;
  final String address;
  final Widget myWidget;

  CardData({
    this.imagePath = "assets/bCards/card2.jpg",
    this.name = "Your Name",
    this.address = "Your Address",
    this.business = "About Business",
    this.email = "Type Email here",
    this.job = "Your Job",
    this.number = "Cell No",
    this.title = "Title",
    this.webSite = "Website is here",
    this.myWidget,
  });

  @override
  _CardDataState createState() => _CardDataState();
  

}

class _CardDataState extends State<CardData> {

  final List<CodeModel> myCode = [
    CodeModel(codeIndex: 0, codeObject: CardObject1(name: "IrfanUllah",)),
    CodeModel(codeIndex: 1, codeObject: CardObject2()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(widget.imagePath.toString()),
                    fit: BoxFit.cover),
              ),
              child: widget.myWidget, //myCode[].codeObject
            ),
          ),
          MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CardDataEntryForm(
                      myImage: widget.imagePath,
                      myWidget: widget.myWidget,
                    ),
                  ),
                );
              },
              child: Text("Add Data to Card"),
              color: Colors.blue),
        ],
      ),
    );
  }
}
