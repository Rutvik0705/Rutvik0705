import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/Widgets/backbuttonwithtitlewidget.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';

import 'tell_about_foodpage_view_screen.dart';

class InviteFriendViaSmsScreen extends StatefulWidget {
  @override
  InviteFriendViaSmsScreenState createState() =>
      InviteFriendViaSmsScreenState();
}

class InviteFriendViaSmsScreenState extends State<InviteFriendViaSmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
        child: SafeArea(
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
                    strDurkinsBar,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: kPadding,
              ),
              Row(
                children: [
                  Text(
                   strDurkinsLiquorBarAddress,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: kColor, fontWeight: FontWeight.w500),
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
                    strEdit,
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
              SizedBox(
                height: kPadding,
              ),
              Row(
                children: [
                  Container(
                    height: 47,
                    width: 248,
                    decoration: BoxDecoration(
                        color: kbottomAppBarcolor,
                        borderRadius: BorderRadius.circular(55)),
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
                  SizedBox(
                    width: kPadding * 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutFoodScreen(),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                           strCircleInviteFriend),
                        Positioned(
                          top: kPadding * 1.7,
                          left: kPadding * 1.7,
                          child: SvgPicture.asset(
                              strPluseInviteFriend),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: kPadding * 4),
              Row(
                children: [
                  Text(
                    strFromContects,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: kdarkcolor,
                        ),
                  )
                ],
              ),
              Divider(
                color: kColor,
                height: kPadding * 5,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, child) {
                    return FirstLastName();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstLastName extends StatelessWidget {
  const FirstLastName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
             strSirstLastName,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
            ),
            Spacer(),
            Text(
              strSent,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: kdarkcolor,
                  ),
            ),
            SizedBox(
              width: kPadding * 1.5,
            ),
            SvgPicture.asset(strMessageBoxInviteFriend)
          ],
        ),
        Divider(
          color: kColor,
          height: kPadding * 5,
        ),
      ],
    );
  }
}
