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
                strYouMadeItScott,
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

// ignore: camel_case_types, must_be_immutable
class Dropdown_shear_calendar_widget extends StatefulWidget {
  Dropdown_shear_calendar_widget({
    Key? key,
  }) : super(key: key);

  @override
  State<Dropdown_shear_calendar_widget> createState() =>
      _Dropdown_shear_calendar_widgetState();
}

// ignore: camel_case_types
class _Dropdown_shear_calendar_widgetState
    extends State<Dropdown_shear_calendar_widget> {
  var _cityName = [
    'Spokane, WA',
    'India',
    'Canada',
    'London',
  ];

  late String _currentItemSelected = 'Spokane, WA';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kPadding * 3, right: kPadding * 3),
      child: Row(
        children: [
          SvgPicture.asset(strLocationSmallIcon),
          SizedBox(
            width: kPadding * 2,
          ),
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
          Spacer(),
          SvgPicture.asset(strShareIcon),
          Spacer(),
          SvgPicture.asset(strCalendar),
        ],
      ),
    );
  }
}
