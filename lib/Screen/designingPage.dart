import 'package:flutter/material.dart';
import 'package:visiting_card_app/Constants/constants.dart';
import 'package:visiting_card_app/Model/imageModel.dart';
import 'package:visiting_card_app/Model/textModel.dart';
import 'package:visiting_card_app/Screen/cardList.dart';
//import 'package:visiting_card_app/Screen/cardList.dart';
import 'package:visiting_card_app/Screen/textEditionPage.dart';
//import 'package:visiting_card_app/other/cardList.dart';

class DesigningPage extends StatefulWidget {
  DesigningPage({this.textStyle, this.myText, this.textAlign, this.imagePath});
  final TextStyle textStyle;
  final TextAlign textAlign;
  final String myText;
  final String imagePath;

  @override
  _DesigningPageState createState() => _DesigningPageState();
}

class _DesigningPageState extends State<DesigningPage> {
  String selectedImasge = "assets/bCards/card1.jpg";

  void changestate(String image) {
    setState(() {
      selectedImasge = image;
    });
  }

  TextModel textModel = TextModel();
  var top = 10.0;
  var left = 10.0;

  List<ImageList> imagelist = [
    ImageList(id: 1, imgPath: "bb.jpg"),
    ImageList(id: 2, imgPath: "side 1.jpg"),
    ImageList(id: 3, imgPath: "ff.jpg"),
    ImageList(id: 4, imgPath: "ee.jpg"),
    ImageList(id: 5, imgPath: "side 2.jpg"),
  ];


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
      ),
      backgroundColor: kgreyColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(3),
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kBlueColor,
          ),
          child: Row(
            children: [
              Container(
                height: 56,
                width: 95,
                child: IconButton(
                  focusColor: Colors.purple,
                  disabledColor: Colors.grey,
                  color: Colors.white,
                  splashColor: Colors.red[200],
                  splashRadius: 20,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            contentPadding: EdgeInsets.all(24),
                            content: Container(
                              height: 300,
                              width: 300,
                              child: GridView.builder(
                                itemCount: imagelist.length,
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 110,
                                        childAspectRatio: 2 / 2,
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5),
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      selectedImasge =
                                          "assets/${imagelist[index].imgPath}";
                                      changestate(selectedImasge);
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/${imagelist[index].imgPath}"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        });
                  },
                  icon: Column(
                    children: [
                      Icon(Icons.photo),
                      Text(
                        "Background",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 56,
                width: 95,
                child: IconButton(
                  color: Colors.white,
                  splashColor: Colors.red[200],
                  splashRadius: 20,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => TextEditorPage()));
                  },
                  icon: Column(
                    children: [
                      Icon(Icons.text_fields),
                      Text(
                        "Text",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 56,
                width: 95,
                child: IconButton(
                  color: Colors.white,
                  splashColor: Colors.red[200],
                  splashRadius: 20,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ImagesList()));
                  },
                  icon: Column(
                    children: [
                      Icon(Icons.design_services),
                      Text(
                        "Best Design",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 3.10,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage(selectedImasge == null
                  ? Text("No Image is Selected")
                  : selectedImasge),
              fit: BoxFit.cover,
            ),
          ),
          child: GestureDetector(
            onVerticalDragUpdate: (DragUpdateDetails dd) {
              setState(() {
                top = dd.localPosition.dy;
                left = dd.localPosition.dx;
              });
            },
            child: Stack(
              children: [
                Positioned(
                  top: top,
                  left: left,
                  child: Text(
                    "${widget.myText}",
                    style: widget.textStyle,
                    textAlign: widget.textAlign,
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
