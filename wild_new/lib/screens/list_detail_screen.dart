import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';
import 'invite_friend_sms_screen.dart';

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
              height: MediaQuery.of(context).size.width + -20,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width - 80,
                    child: Image.asset(
                      strBackSliderPicture,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: kPadding * 2.9),
                      child: WildLogoMenueIconWhite(),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 20,
                    right: MediaQuery.of(context).size.height / 100 * 3,
                    child: Container(
                      child: SvgPicture.asset(strRightArrowSliderScreen),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 31,
                    left: MediaQuery.of(context).size.height / 100 * 4,
                    child: DrinksLogoImageWidget(),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 40,
                    right: MediaQuery.of(context).size.height / 100 * 3,
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InviteFriendScreen(),
                        ),
                      ),
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset(strLikeIcon),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding * 2.6),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        strDurkinsBar,
                        style: Theme.of(context).textTheme.overline!.copyWith(
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            color: kWhiteColor),
                      ),
                    ],
                  ),
                  Divider(
                    color: kColor,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 100 * 2),
                  Row(
                    children: [
                      RatingBar(
                        itemSize: 25,
                        initialRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                          full: Icon(Icons.star, color: Colors.grey),
                          half: Icon(
                            Icons.star_half,
                            color: Colors.grey,
                          ),
                          empty: Icon(
                            Icons.star_outline,
                            color: Colors.grey,
                          ),
                        ),
                        onRatingUpdate: (double value) {},
                        // onRatingUpdate: (value) {
                        //     setState(() {
                        //       _ratingValue = value;
                        //     });
                        //   }
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InviteFriendScreen(),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 2),
                          child: Container(
                            height: 22,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Colors.green[200],
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(3, 3),
                                  color: Colors.green,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "OPEN",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: kPadding,
                                        color: Colors.green),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                          Container(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Text(
                              strAddressBar,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w400,
                                  ),
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
                                    fontWeight: FontWeight.w400,
                                    color: kWhiteColor),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Text(
                              strWebCom,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w400,
                                      color: kWhiteColor),
                            ),
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
                              SizedBox(
                                width: kPadding * 0.8,
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
                              SizedBox(width: kPadding * 0.8),
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
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0,
                            color: kColor,
                            fontSize: 16),
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

class DrinksLogoImageWidget extends StatelessWidget {
  const DrinksLogoImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: kColor,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: kbackgroundcolor,
          ),
          borderRadius: BorderRadius.circular(100),
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
    );
  }
}
