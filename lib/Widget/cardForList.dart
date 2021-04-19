import 'package:flutter/material.dart';
import 'package:visiting_card_app/Screen/cardDataEntryForm.dart';

class CardForList extends StatelessWidget {
  final String image;
  CardForList({this.image="assets/eCards/card1.jpg"});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => CardDataEntryForm(myImage: image)));
      },
      child: Padding(
        padding: const EdgeInsets.only(top:12),
        child: Container(
          height: 170,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.green,
            image: DecorationImage(
                image: AssetImage("$image"),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
