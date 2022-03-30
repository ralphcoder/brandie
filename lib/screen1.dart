import 'package:flutter/material.dart';
import 'package:liglo/screen21.dart';
import 'constants.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'animations.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

List<String> strArr = ['Pepsi', 'Forever New', 'Mac Cosmetics', 'Kurkure'];
List<String> strdis = [
  'Show us your swag moments with @pepsiindia!',
  'Take your winter fashion game a notch higher with #Foreverfree',
  'show your love for makeup and get a chance to be featured...',
  'Share your masaledar moments with @kurkuresancks'
];

List<String> strdays = ['13', '15', '20', '30'];

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundcolor,
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "REWARDS",
                    style: TextStyle(
                      color: thefont,
                      fontSize: 24,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Oswald',
                    ),
                  ),
                  Hero(
                    tag: 'logo',
                    child: CircleAvatar(
                        backgroundColor: thefont,
                        child: Icon(
                          Icons.person,
                          color: brandiegreen,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              height: 420,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return new GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            animation(
                                widget: Screen21(index),
                                curve: Curves.fastLinearToSlowEaseIn,
                                alignment: Alignment.centerLeft));
                      },
                      child: Container(
                        height: 370,
                        width: 230,
                        margin: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 7,
                              color: Color(0xFFa39ea2).withOpacity(.74),
                            ),
                          ],
                          color: Color(0xFFffffff),
                          borderRadius: BorderRadius.circular(21.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              padding:
                                  EdgeInsets.only(top: 21, left: 21, right: 21),
                              height: 235,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/back$index.png"),
                                  fit: BoxFit.fitWidth,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(21),
                                  topRight: Radius.circular(21),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 10, 15, 10),
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(height: 5),
                                    Text(
                                      strArr[index],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Kdakbrowntextcolor,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "COFFEE BEAN BAG ",
                                            style: TextStyle(
                                              color: Klightbrowntextcolor,
                                              letterSpacing: 1,
                                              fontSize: 14,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "8 0Z",
                                            style: TextStyle(
                                                color: Kdakbrowntextcolor),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      strdis[index],
                                      style: TextStyle(
                                        fontFamily: 'Orbiton',
                                        fontWeight: FontWeight.w100,
                                        color: Colors.black,
                                        fontSize: 9,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          strdays[index] + ' days left',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Kdakbrowntextcolor,
                                            fontWeight: FontWeight.w800,
                                            fontFamily: 'Oswald',
                                          ),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: backgroundcolor,
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0XFF914426),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.centerLeft,
              height: 30,
              child: Column(
                children: [
                  Text(
                    '1\/5',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: KGoldFontColor,
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Divider(
                      thickness: 2,
                      color: KGoldFontColor,
                      height: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
            backgroundColor: backgroundcolor,
            activeColor: brandiegreen,
            height: 55,
            color: thefont,
            items: [
              TabItem(icon: Icons.photo, title: 'Home'),
              TabItem(icon: Icons.monetization_on, title: 'Reward'),
              TabItem(icon: Icons.add_circle),
              TabItem(icon: Icons.label, title: 'Brand'),
              TabItem(icon: Icons.settings, title: 'Profile'),
            ],
            initialActiveIndex: 2, //optional, default as 0
            onTap: (int i) => print("you have pressed bottom bar")));
  }
}
