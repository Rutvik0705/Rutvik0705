import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/bottomAppBar.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/drinks_dinner_screen.dart';
import 'package:wild_new/logoHeaderScreen.dart';

class LoadScreen extends StatefulWidget {
  @override
  LoadScreenState createState() => LoadScreenState();
}

class LoadScreenState extends State<LoadScreen> {
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
        builder: (context) => DrinksDinner(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LogoHeaderWithMenu(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
              child: Text(
                "You made it through Tuesday, \nScott!",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Spacer(),
            Dropdown_shear_calendar_widget(),
            SizedBox(
              height: kPadding * 2,
            ),
            WildBottomAppBar(),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Dropdown_shear_calendar_widget extends StatelessWidget {
  const Dropdown_shear_calendar_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(kPadding * 3),
          child: SvgPicture.asset("assets/image/location_2.svg"),
        ),
        DropdownButton(
          dropdownColor: Colors.white,
          iconSize: 40,
          focusColor: Colors.black,
          style: TextStyle(color: kbackgroundcolor, fontSize: 25),
          underline: Container(color: Colors.transparent),
          items: ['A', 'B', 'C', 'D'].map((String value) {
            return DropdownMenuItem(
              value: value,
              child: new Text(value),
            );
          }).toList(),
          onChanged: (_) {
            print(DropdownMenuItem);
          },
        ),
        SizedBox(
          width: kPadding * 4,
        ),
        SvgPicture.asset("assets/image/share_icon.svg"),
        SizedBox(
          width: kPadding * 4,
        ),
        SvgPicture.asset("assets/image/calendar.svg"),
      ],
    );
  }
}