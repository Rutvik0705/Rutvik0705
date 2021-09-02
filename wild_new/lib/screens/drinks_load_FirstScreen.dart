import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/screens/wildLoad_screen.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';
import '../Widgets/bottom_AppBar_Widget.dart';

class DrinksLoadFirstScreen extends StatefulWidget {
  @override
  DrinksLoadFirstScreenState createState() => DrinksLoadFirstScreenState();
}

class DrinksLoadFirstScreenState extends State<DrinksLoadFirstScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoadScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(strFoodIcon), fit: BoxFit.cover),
            ),
          ),
          Container(
            color: kbackgroundcolor.withOpacity(0.5),
          ),
          SafeArea(
            child: Column(
              children: [
                SvgPicture.asset(strWildLogoIcon),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: kPadding * 3, right: kPadding),
                  child: Container(
                    decoration: BoxDecoration(
                      // gradient: RadialGradient(
                      //   colors: [
                      //     Color.fromRGBO(0, 0, 0, 1),
                      //     Color.fromRGBO(0, 0, 0, 0.5),
                      //   ],
                      // ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black87,
                          offset: Offset(
                            -10,
                            1.0,
                          ),
                          blurRadius: 100.0,
                          spreadRadius: 40.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(300),
                    ),
                    child: Text(
                      strOurAiIsScouringYourLocation,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        shadows: [
                          Shadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                WildBottomAppBar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
