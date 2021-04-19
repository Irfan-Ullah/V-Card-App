import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visiting_card_app/Cards/Card1.dart';
import 'package:visiting_card_app/Constants/constants.dart';
import 'package:image_picker/image_picker.dart';

class CardDataEntryForm extends StatefulWidget {
  final String myImage;
  final Widget myWidget;
  final String name;
  final String number;
  final String title;
  final String job;
  final String business;
  final String email;
  final String webSite;
  final String address;
  CardDataEntryForm(
      {this.myImage,
      this.myWidget,
      this.name,
      this.number,
      this.title,
      this.job,
      this.business,
      this.email,
      this.webSite,
      this.address});

  void run() {}

  @override
  _CardDataEntryFormState createState() => _CardDataEntryFormState();
}

class _CardDataEntryFormState extends State<CardDataEntryForm> {
  File galeryImage;
  selectImage() async {
    galeryImage = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      logo = galeryImage;
    });
  }

  File logo;
  final TextEditingController _nameContoller = TextEditingController();
  final TextEditingController _businessContoller = TextEditingController();
  final TextEditingController _jobContoller = TextEditingController();
  final TextEditingController _companyContoller = TextEditingController();
  final TextEditingController _cellnoContoller = TextEditingController();
  final TextEditingController _emailContoller = TextEditingController();
  final TextEditingController _websiteContoller = TextEditingController();
  final TextEditingController _addressContoller = TextEditingController();

  //  CardDataModel cardDataModel ;
  File cImage;
  String name;
  String business;
  String title;
  String job;
  String number;
  String email;
  String webSite;
  String address;


//   bool fimage = true;
//   bool fname = true;
//   bool fbusiness = true;
//   bool ftitle = true;
//   bool fjob = true;
//   bool fnumber = true;
//   bool femail = true;
//   bool fwebsite = true;
//   bool faddress = true;

//   String img = "assets/eCards/card1.jpg";

// @override
//   void initState() {
    
//     super.initState();
//     femail = !femail;
//   }

  


  @override
  Widget build(BuildContext context) {

      // if (widget.myImage == img) {
      //   setState(() {
      //     fimage = false;
      //     fname = false;
      //     fbusiness = false;
      //     ftitle = false;
      //     fjob = false;
      //     fnumber = true;
      //     femail = true;
      //     fwebsite = true;
      //     faddress = false;
      //     });
      //   } else if (widget.myImage == "assets/eCards/card2.jpg") {
      //     fimage = false;
      //     fname = false;
      //     fbusiness = false;
      //     ftitle = false;
      //     fjob = false;
      //     fnumber = false;
      //     femail = false;
      //     fwebsite = false;
      //     faddress = false;
      //   } else if (widget.myImage == "assets/eCards/card3.jpg") {
      //     fname = true;
      //     fbusiness = true;
      //     ftitle = true;
      //   }
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white70,
          elevation: 1,
          title: Text(
            "MyAppName",
            style: GoogleFonts.lobster(
              textStyle: TextStyle(color: kgreenColor, fontSize: 33),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              color: kwhiteColor,
              icon: Icon(Icons.reset_tv),
            ),
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "My Information",
                    style: TextStyle(color: kgreenColor, fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                          controller: _nameContoller,
                          style: TextStyle(fontSize: 19, color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            labelText: "Owner Name",
                            suffixIcon: Icon(
                              Icons.person,
                              color: kgreenColor,
                            ),
                          ),
                        ),
                      
                  SizedBox(height: 5),
                  TextFormField(
                          controller: _companyContoller,
                          style: TextStyle(fontSize: 19, color: Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              labelText: "Company Name",
                              suffixIcon: Icon(
                                Icons.account_balance,
                                color: kgreenColor,
                              )),
                        ),
                    
                  SizedBox(height: 5),
                  TextFormField(
                          controller: _businessContoller,
                          style: TextStyle(fontSize: 19, color: Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              labelText: "Business",
                              suffixIcon: Icon(
                                Icons.business,
                                color: kgreenColor,
                              )),
                        ),
                      
                  SizedBox(height: 5),
                  TextFormField(
                          controller: _jobContoller,
                          style: TextStyle(fontSize: 19, color: Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              labelText: "Job",
                              suffixIcon: Icon(
                                Icons.work,
                                color: kgreenColor,
                              )),
                        ),
                    
                  SizedBox(height: 5),
                  TextFormField(
                          controller: _cellnoContoller,
                          style: TextStyle(fontSize: 19, color: Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              labelText: "Cell No",
                              suffixIcon: Icon(
                                Icons.contact_phone,
                                color: kgreenColor,
                              )),
                        ),
                      
                  SizedBox(height: 5),
                  TextFormField(
                          controller: _emailContoller,
                          style: TextStyle(fontSize: 19, color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            labelText: "E-Mail",
                            suffixIcon: Icon(
                              Icons.email,
                              color: kgreenColor,
                            ),
                          ),
                        ),
                      
                  SizedBox(height: 5),
                  TextFormField(
                          controller: _websiteContoller,
                          style: TextStyle(fontSize: 19, color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            labelText: "Web Site",
                            suffixIcon: Icon(
                              Icons.web,
                              color: kgreenColor,
                            ),
                          ),
                        ),
                      
                  SizedBox(height: 5),
                  TextFormField(
                          controller: _addressContoller,
                          style: TextStyle(fontSize: 19, color: Colors.black),
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2,
                                color: kgreenColor,
                              )),
                              contentPadding: EdgeInsets.all(5),
                              labelText: "Address",
                              suffixIcon: Icon(
                                Icons.commute,
                                color: kgreenColor,
                              )),
                        ),
                      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(-1, -1),
                                color: Colors.white,
                                spreadRadius: 3,
                                blurRadius: 7,
                              ),
                              BoxShadow(
                                offset: Offset(1, 1),
                                color: Colors.black12,
                                spreadRadius: 3,
                                blurRadius: 7,
                              ),
                            ],
                          ),
                          height: 40,
                          width: MediaQuery.of(context).size.width / 4,
                          child: Center(
                            child: MaterialButton(
                              child: Text(
                                "Logo",
                                style: GoogleFonts.righteous(
                                    textStyle: TextStyle(color: Colors.black)),
                              ),
                              onPressed: () {
                                selectImage();
                              },
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(color: kgreenColor, width: 1),
                          ),
                          width: MediaQuery.of(context).size.width / 6,
                          child: Center(
                            child: galeryImage == null
                                ? Text(
                                    "Logo not Loded",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )
                                : Image.file(
                                    galeryImage,
                                    fit: BoxFit.fill,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        cImage = logo;
                        name = _nameContoller.text;
                        title = _companyContoller.text;
                        job = _jobContoller.text;
                        business = _businessContoller.text;
                        number = _cellnoContoller.text;
                        email = _emailContoller.text;
                        webSite = _websiteContoller.text;
                        address = _addressContoller.text;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Card1(
                              background: widget.myImage,
                              logo: cImage,
                              name: name,
                              job: job,
                              title: title,
                              business:business,
                              number: number,
                              email: email,
                              website: webSite,
                              address: address,
                            )),
                      );
                    },
                    child: Text(
                      "Create Card",
                      style: GoogleFonts.righteous(
                          textStyle:
                              TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                    color: kgreenColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      
    );
  }
}
