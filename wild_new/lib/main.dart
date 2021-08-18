import 'package:flutter/material.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/screens/wildLogin_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WILD',
      theme: ThemeData(
        scaffoldBackgroundColor: kbackgroundcolor,
        textTheme: TextTheme(
          //headline 1
          headline1: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 55.0,
            color: kColor,
          ),
          //headline 2
          headline2: TextStyle(
              color: kdarkcolor,
              fontSize: 11,
              fontWeight: FontWeight.w700,
              letterSpacing: 2),
          //headline 3
          headline3: TextStyle(
            color: kColor,
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
          //headline 4
          headline4: TextStyle(
            color: kbackgroundcolor,
            fontSize: 13,
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
          //headline 5
          headline5: TextStyle(
            color: kTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
          //headline 6
          headline6: TextStyle(
            color: kdarkcolor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          //bodyText 1
          bodyText1: TextStyle(
            color: kColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
          ),
          //bodyText 2
          bodyText2: TextStyle(
            color: kColor,
            fontSize: 47,
            fontWeight: FontWeight.w300,
          ),
          //subtitle 1
          subtitle1: TextStyle(
            color: kTextColor,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
          //subtitle 2
          subtitle2: TextStyle(
            color: kColor,
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
          //Overline 
          overline: TextStyle(
            color: kColor,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: WildLoginWidget(
        Padding: kDefaultPadding,
      ),
    );
  }
}
