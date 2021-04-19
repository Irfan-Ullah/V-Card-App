import 'package:flutter/material.dart';
import 'package:visiting_card_app/Widget/cardForList.dart';

class ImagesList extends StatelessWidget {
  
  final List<CardForList> mList = [
    CardForList(image: "assets/bCards/card1.jpg"),
    CardForList(image: "assets/bCards/card2.jpg"),
    CardForList(image: "assets/bCards/card3.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          "MyAppName",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: mList.length,
                  itemBuilder: (context, index) {
                    return Container(child: mList[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
