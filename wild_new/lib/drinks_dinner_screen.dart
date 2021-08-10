import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/wildLoadScreen.dart';

import 'bottomAppBar.dart';
import 'logoHeaderScreen.dart';

class DrinksDinner extends StatefulWidget {
  @override
  DrinksDinnerState createState() => DrinksDinnerState();
}

class DrinksDinnerState extends State<DrinksDinner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          LogoHeaderWithMenu(),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: kPadding * 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Drinks",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: 38,
                        fontWeight: FontWeight.w200,
                      ),
                ),
                Divider(
                  color: kColor,
                  endIndent: 30,
                  height: 50,
                  indent: 3,
                ),
                Text(
                  "Dinner",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: 38,
                        fontWeight: FontWeight.w200,
                      ),
                ),
                Divider(
                  color: kColor,
                  endIndent: 30,
                  height: 50,
                  indent: 3,
                ),
                Text(
                  "Surprise Me",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: 38,
                        fontWeight: FontWeight.w200,
                      ),
                ),
                Divider(
                  color: kColor,
                  endIndent: 30,
                  height: 50,
                  indent: 3,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: kPadding * 4, bottom: kPadding * 4, top: kPadding * 6),
            child: Row(
              children: [
                SvgPicture.asset("assets/image/single_user.svg"),
                SizedBox(
                  width: kPadding * 1.5,
                ),
                SvgPicture.asset("assets/image/drop_down.svg"),
              ],
            ),
          ),
          Dropdown_shear_calendar_widget(),
          SizedBox(
            height: kPadding * 2,
          ),
          WildBottomAppBar(),
        ],
      )),
    );
  }
}
