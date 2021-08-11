import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/drinks_load_Screen.dart';
import 'package:wild_new/wildLoadScreen.dart';
import 'bottomAppBar.dart';
import 'image_string.dart';
import 'logoHeaderScreen.dart';
import 'text_string.dart';

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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DrinksLoadScreen(),
                      ),
                    );
                  },
                  child: Text(
                    strDrinks,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontSize: 38,
                          fontWeight: FontWeight.w200,
                        ),
                  ),
                ),
                Divider(
                  color: kColor,
                  endIndent: 30,
                  height: 50,
                  indent: 3,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    strDinner,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontSize: 38,
                          fontWeight: FontWeight.w200,
                        ),
                  ),
                ),
                Divider(
                  color: kColor,
                  endIndent: 30,
                  height: 50,
                  indent: 3,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    strSurprise,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontSize: 38,
                          fontWeight: FontWeight.w200,
                        ),
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
                SvgPicture.asset(strSingleUser),
                SizedBox(
                  width: kPadding * 1.5,
                ),
                SvgPicture.asset(strDownArrow),
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
