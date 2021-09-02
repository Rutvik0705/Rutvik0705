import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/Widgets/bottom_AppBar_Widget.dart';
import 'package:wild_new/screens/drinks_dinner_screen.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';

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
    var duration = new Duration(seconds: 1);
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
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding:
                      EdgeInsets.only(right: kPadding * 3, left: kPadding * 3),
                  child: Column(
                    children: [
                      LogoHeaderWithMenu(),
                      Spacer(),
                      Text(
                        strYouMadeItScott,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Spacer(),
                      Dropdownshearcalendarwidget(),
                      SizedBox(height: MediaQuery.of(context).size.height / 30)
                    ],
                  ),
                ),
              ),
            ),
            WildBottomAppBar(),
          ],
        ),
      ),
    );
  }
}

class Dropdownshearcalendarwidget extends StatefulWidget {
  Dropdownshearcalendarwidget({
    Key? key,
  }) : super(key: key);

  @override
  State<Dropdownshearcalendarwidget> createState() =>
      DropdownshearcalendarwidgetState();
}

class DropdownshearcalendarwidgetState
    extends State<Dropdownshearcalendarwidget> {
  var _cityName = [
    'Spokane, WA',
    'India',
    'Canada',
    'London',
  ];

  late String _currentItemSelected = 'Spokane, WA';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(strLocationSmallIcon),
        Spacer(),
        DropdownButton<String>(
          dropdownColor: kbackgroundcolor,
          underline: Container(color: kbackgroundcolor),
          items: _cityName.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(
                dropDownStringItem,
                style: TextStyle(
                    color: kColor, fontSize: 18, fontWeight: FontWeight.w500),
              ),
            );
          }).toList(),
          onChanged: (newValueSelected) {
            setState(
              () {
                print("selected$newValueSelected");
                _currentItemSelected = newValueSelected ?? "";
              },
            );
          },
          value: _currentItemSelected,
        ),
        Spacer(flex: 2),
        SvgPicture.asset(strShareIcon),
        Spacer(flex: 2),
        SvgPicture.asset(strCalendar),
      ],
    );
  }
}
