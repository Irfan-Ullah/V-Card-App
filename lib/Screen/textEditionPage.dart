import 'package:flutter/material.dart';

import 'package:text_style_editor/text_style_editor.dart';
import 'package:visiting_card_app/Constants/constants.dart';
import 'package:visiting_card_app/Screen/designingPage.dart';

class TextEditorPage extends StatefulWidget {
  @override
  _TextEditorPageState createState() => _TextEditorPageState();
}

class _TextEditorPageState extends State<TextEditorPage> {
  TextStyle textStyle;
  TextAlign textAlign;
  String myText;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    textStyle =
        TextStyle(fontSize: 25, color: Colors.blue, fontFamily: 'TrainOne');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        backgroundColor: kgreyColor,
        body: Column(
          children: <Widget>[
            Text(
              "$myText",
              style: textStyle,
              textAlign: textAlign,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: _controller,
                onChanged: (context) {
                  setState(() {
                    myText = _controller.text;
                  });
                },
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  if (_controller.text.isNotEmpty) {
                    myText = _controller.text;
                  }
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DesigningPage(
                              textStyle: textStyle,
                              textAlign: textAlign,
                              myText: myText,
                            )));
              },
              child: Text("Done",style: TextStyle(color: kgreyColor),),
              color: kBlueColor,
            ),
            Expanded(
              child: SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Expanded(
                    child: Column(
                      verticalDirection: VerticalDirection.down,
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: TextStyleEditor(
                              height: 250,
                              textStyle: textStyle,
                              onTextStyleChanged: (value) {
                                setState(() {
                                  textStyle = value;
                                });
                              },
                              onTextAlignChanged: (value) {
                                setState(() {
                                  textAlign = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
