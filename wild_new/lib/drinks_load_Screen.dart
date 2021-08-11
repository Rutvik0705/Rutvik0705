import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/cheersScreen.dart';
import 'package:wild_new/constant.dart';
import 'bottomAppBar.dart';
import 'image_string.dart';
import 'text_string.dart';

class DrinksLoadScreen extends StatefulWidget {
  @override
  DrinksLoadScreenState createState() => DrinksLoadScreenState();
}

class DrinksLoadScreenState extends State<DrinksLoadScreen> {

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
        builder: (context) => CheersScreen(),
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
                  image: AssetImage(strFoodIcon),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            color: kbackgroundcolor.withOpacity(0.5),
          ),
          Container(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SvgPicture.asset(strWildLogoIcon),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: kPadding * 3),
                    child: Text(
                      strAiHappeningNow,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  Spacer(),
                  WildBottomAppBar(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
