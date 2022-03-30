import 'package:flutter/material.dart';
import 'package:liglo/animations.dart';
import 'package:liglo/screen1.dart';
import 'rounded_button.dart';
import 'animations.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'liglo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0XFFDDE6E8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 250,
            ),
            NeumorphicText(
              'Brandie',
              textStyle: NeumorphicTextStyle(
                fontSize: 75,
                fontWeight: FontWeight.bold,
              ),
            ),
//            RichText(
//              text: TextSpan(
//                children: [
//                  TextSpan(
//                    text: "Bran",
//                    style: TextStyle(color: Color(0XFF186e77), fontSize: 60),
//                  ),
//                  TextSpan(
//                    text: "die.",
//                    style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                        color: Colors.white,
//                        fontSize: 60),
//                  ),
//                ],
//              ),
//            ), // liglo
            SizedBox(height: 160),
            SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: RoundedButton(
                text: "Start ",
                fontSize: 20,
                press: () {
                  Navigator.push(
                      context,
                      animation(
                          widget: Screen1(),
                          curve: Curves.elasticIn,
                          alignment: Alignment.bottomCenter));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
