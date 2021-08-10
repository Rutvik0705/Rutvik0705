import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/location.dart';
import 'package:wild_new/logoHeaderScreen.dart';

class Confirmation extends StatefulWidget {
  @override
  ConfirmationState createState() => ConfirmationState();
}

class ConfirmationState extends State<Confirmation> {
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
        builder: (context) => LocationScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LogoHeaderScreen(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 4),
              child: Row(
                children: [
                  Text(
                    "🎉",
                    style: TextStyle(fontSize: 77),
                  ),
                ],
              ),
            ),
            SizedBox(height: kPadding * 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 4),
              child: Row(
                children: [
                  Text(
                    "Woohoo! \nLet's get \nWILD!",
                    style: Theme.of(context).textTheme.bodyText2,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}