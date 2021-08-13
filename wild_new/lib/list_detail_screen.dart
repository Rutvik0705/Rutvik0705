import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/constant.dart';
import 'image_string.dart';
import 'invite_friend_sms.dart';
import 'logoHeaderScreen.dart';
import 'text_string.dart';

class ListDetailScreen extends StatefulWidget {
  @override
  ListDetailScreenState createState() => ListDetailScreenState();
}

class ListDetailScreenState extends State<ListDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset(
                      strBackSliderPicture,
                      width: 415,
                      height: 299,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(right: kPadding * 3),
                      child: WildLogoMenueIconWhite(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: kPadding * 16, right: kPadding * 2.2),
                    child: Container(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset(strRightArrowSliderScreen),
                    ),
                  ),
                  Positioned(
                    top: kPadding * 25,
                    left: kPadding * 2.3,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: kColor,
                        ),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(45),
                        ),
                        child: Image.asset(
                          strDrinksLogoImage,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: kPadding * 32,
                    right: kPadding * 2.3,
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InviteFriendViaSmsScreen(),
                        ),
                      ),
                      child: SvgPicture.asset(strLikeIcon),
                    ),
                  ),
                  Positioned(
                    top: kPadding * 36,
                    left: kPadding * 3,
                    right: kPadding * 2.8,
                    child: Row(
                      children: [
                        Text(
                          strDurkinsBar,
                          style: Theme.of(context).textTheme.overline!.copyWith(
                                fontSize: 28,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: kPadding * 2.8, right: kPadding * 2.8),
              child: Column(
                children: [
                  SizedBox(
                    height: kPadding,
                  ),
                  Divider(
                    color: kColor,
                  ),
                  SizedBox(
                    height: kPadding * 2,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        strStarReatting,
                        width: kPadding * 8.4,
                        height: kPadding * 2,
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          strOpenButton,
                          height: 30,
                          width: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: kPadding * 2,
                          ),
                          Text(
                            strAddressBar,
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          SizedBox(
                            height: 19,
                          ),
                          Text(
                            "(509) 863-9501",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    fontWeight: FontWeight.w400, color: kColor),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            strWebCom,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    fontWeight: FontWeight.w400, color: kColor),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Text(
                                "4pm-10pm",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                      color: kColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              SvgPicture.asset(strClocktime)
                            ],
                          ),
                          SizedBox(
                            height: kPadding * 1.4,
                          ),
                          Row(
                            children: [
                              Text(
                                "2.5 mi",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                      color: kColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              SvgPicture.asset(strLocationSmallIcon),
                            ],
                          ),
                          SizedBox(
                            height: kPadding * 1.4,
                          ),
                          SvgPicture.asset(strDoller)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: kPadding * 2.4,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(strShareIcon),
                      SizedBox(width: kPadding * 4),
                      SvgPicture.asset(strCalendar),
                      Spacer(),
                      Image.asset(
                        strOpenTableDetailScreen,
                        height: 45,
                        width: 109,
                      )
                    ],
                  ),
                  SizedBox(height: kPadding * 2),
                  Divider(
                    color: kColor,
                  ),
                  SizedBox(height: kPadding * 1.6),
                  Row(
                    children: [
                      Text(
                        strOverview,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: kdarkcolor,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(height: kPadding),
                  Row(
                    children: [
                      Text(
                        strA_NattyUpscaleDiner,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w400, color: kColor),
                      )
                    ],
                  ),
                  SizedBox(height: kPadding * 3),
                  Row(
                    children: [
                      SvgPicture.asset(strInstagramLogo),
                      SizedBox(width: kPadding),
                      Text(
                        strDurkinsLiquorBar,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: kColor,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(height: kPadding),
                  Container(
                    width: 420,
                    height: 116,
                    child: Image.asset(
                      strInstagramPic1,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    width: 420,
                    height: 116,
                    child: Image.asset(
                      strInstagramPic2,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
