import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Screen21 extends StatelessWidget {
  final int a;
  List<String> strArr = ['PEPSI', 'FOREVER NEW', 'MAC COSMETICS', 'KURKURE'];
  List<String> strdis = [
    'Show us your swag moments with @pepsiindia!',
    'Take your winter fashion game a notch higher with #Foreverfree',
    'show your love for makeup and get a chance to be featured...',
    'Share your masaledar moments with @kurkuresancks'
  ];

  List<String> strdays = ['13', '15', '20', '30'];
  Screen21(this.a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 60, 10, 20),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Hero(
                    tag: 'logo',
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage("images/bacak$a.jpg"),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 355,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 7,
                        color: Color(0xFFa39ea2).withOpacity(.74),
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage("images/back$a.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(75),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 19),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Text(
                  strArr[a],
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Klightbrowntextcolor,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Oswald',
                  ),
                ),
                SizedBox(height: 14),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "COFFEE BEAN BAG ",
                        style: TextStyle(
                          color: Kdakbrowntextcolor,
                          fontSize: 15.0,
                          letterSpacing: 3,
                          fontFamily: 'Orbitron',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "8 0Z",
                        style: TextStyle(
                          color: Klightbrowntextcolor,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    strdis[a],
                    style: TextStyle(
                      fontFamily: 'Orbiton',
                      fontWeight: FontWeight.w100,
                      color: thefont,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                SizedBox(height: 9),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Days left-' + strdays[a],
                        style: TextStyle(
                          fontSize: 21.0,
                          color: thefont,
                          fontFamily: 'Oswald',
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 7,
                              color: Color(0xFFa39ea2).withOpacity(.84),
                            ),
                          ],
                          color: backgroundcolor,
                          borderRadius: BorderRadius.all(Radius.circular(23)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 15,
                              color: Klightbrowntextcolor,
                              fontFamily: 'Orbiton',
                              fontWeight: FontWeight.w500,
                            ),
//                      CircleAvatar(
//                        radius: 24,
//                        backgroundColor: Color(0XFFFE9870),
//                        child: Icon(
//                          Icons.assistant,
//                          color: Color(0XFF914426),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
