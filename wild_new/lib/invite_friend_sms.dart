import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/image_string.dart';
import 'package:wild_new/logoHeaderScreen.dart';
import 'backbuttonwithtitlewidget.dart';
import 'text_string.dart';

class InviteFriendViaSmsScreen extends StatefulWidget {
  @override
  InviteFriendViaSmsScreenState createState() =>
      InviteFriendViaSmsScreenState();
}

class InviteFriendViaSmsScreenState extends State<InviteFriendViaSmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
              child: Column(
                children: [
                  WildLogoMenueIconWhite(),
                  Padding(
                    padding: const EdgeInsets.only(top: kPadding * 6),
                    child: BackbuttonWithTitleWidget(
                      navigationTitle: '',
                      onClickBack: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        strInviteFriend,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kPadding * 2.4,
                  ),
                  Row(
                    children: [
                      Text(
                        strDetailsInviteFriend,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: kdarkcolor,
                            ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: kPadding * 1.7,
                  ),
                  Row(
                    children: [
                      Text(
                        "Durkins Liquor Bar",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kPadding,
                  ),
                  Row(
                    children: [
                      Text(
                        "415 W Main Ave, Spokane, WA 99201",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: kColor, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: kPadding * 2,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(strDateCalenderIcon),
                      SizedBox(
                        width: kPadding * 11.2,
                      ),
                      SvgPicture.asset(strClocktime),
                      SizedBox(
                        width: kPadding * 8.6,
                      ),
                      Text(
                        "EDIT",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kPadding * 3,
                  ),
                  Row(
                    children: [
                      Text(
                        strSmsInviteFriend,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: kdarkcolor,
                            ),
                      )
                    ],
                  ),
                  Container(
                    height: 47,
                    width: 248,
                    decoration: BoxDecoration(
                        color: kbottomAppBarcolor,
                        borderRadius: BorderRadius.circular(32)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
