import 'package:flutter/material.dart';
import 'package:visiting_card_app/Constants/constants.dart';
import 'package:visiting_card_app/Screen/designingPage.dart';


class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>DesigningPage()));
                },
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Icon(
                        Icons.create,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Create",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Design Your Visiting Card",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      color: kgreenColor,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(5, 5),
                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(-5, -5),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      print("hellllowwwwwwwww");
                    },
                    child: Container(
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.view_comfy,size: 40,color: Colors.white),
                                SizedBox(width:5),
                                Text("View Your Cards",
                                    style: TextStyle(
                                        fontSize: 23, color: Colors.white)),
                              ],
                            ),
                          )),
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: kBlueColor,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(5, 5),
                            ),
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 10,
                              offset: Offset(-5, -5),
                            ),
                          ]),
                    ),
                  ),
                ),
                
              ],
            ),
            SizedBox(height:60),
            Text("Directed by: EwigLife",style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}
