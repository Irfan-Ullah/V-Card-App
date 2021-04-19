import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:visiting_card_app/Constants/constants.dart';
import 'package:visiting_card_app/Screen/homeScreen.dart';

class SplashScreen extends StatefulWidget {



  
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    return navigationPage;
  }

  void navigationPage() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => HomePage()), (_) => false);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }



  final imageList = [
    'assets/side 1.jpg',
    'assets/side 2.jpg',
    'assets/logo.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Stack(
              children: [
                Positioned(
                  top: -30,
                  right: -480,
                  child: Container(
                    width: 695,
                    height: 700,
                    decoration: BoxDecoration(
                      color: kgreenColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  "assets/logo.png",
                  height: 80,
                  width: 80,
                ),
              ),
              Text(
                "Ewig Life",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Swiper(
            autoplay: true,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  height: 400,
                  width: 250,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 15,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        imageList[index],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
              bottom: 70,
              left: 230,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 18, color: kwhiteColor),
                ),
              )),
        ],
      ),
    );
  }
}
