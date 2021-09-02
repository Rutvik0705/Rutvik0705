import 'dart:ui';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/Widgets/ratting_food_Widget.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';
import 'location_permission_screen.dart';
import 'bar_review_Screen.dart';

// ignore: must_be_immutable
class AboutFoodScreen extends StatefulWidget {
  AboutFoodScreen();
  @override
  AboutFoodScreenState createState() => AboutFoodScreenState();
}

class AboutFoodScreenState extends State<AboutFoodScreen> {
  final PageController controller = PageController();
  var allPages = [
    AboutFoodPageOne(),
    RattingFoodPageTwo(),
    HungryTooListWidget(),
    BestInfluencers(),
    UseLocation(),
  ];
  int pagerIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _pageChanged(int index) {
    setState(() {
      pagerIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPadding * 3),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  WildLogoMenueIconWhite(),
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 100 * 8),
                  Expanded(
                    child: PageView.builder(
                      onPageChanged: _pageChanged,
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      itemCount: allPages.length,
                      itemBuilder: (context, index) {
                        return allPages[index];
                      },
                    ),
                  ),
                ],
              ),
              PageIndicator(
                pagerIndex: pagerIndex,
                totalPages: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    Key? key,
    required this.pagerIndex,
    required this.totalPages,
  }) : super(key: key);

  final totalPages;
  final int pagerIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kPadding * 5),
      child: Row(
        children: [
          for (int i = 0; i < totalPages; i++)
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: pagerIndex == i ? Colors.white : Colors.grey[700],
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
        ],
      ),
    );
  }
}

/// HUNGRY TOO LIST WIDGET....
class HungryTooListWidget extends StatefulWidget {
  HungryTooListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HungryTooListWidget> createState() => _HungryTooListWidgetState();
}

class _HungryTooListWidgetState extends State<HungryTooListWidget> {
  bool selectedFoodPopup = false;
  int selectedFood = 0;

  var foodGridView = [
    '🥑',
    '🥐',
    '🥓',
    '🍳',
    '🥗',
    '🍔',
    '🍟',
    '🍝',
    '🍜',
    '🥙',
    '🌮',
    '🌯',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            strPickAllTheOnesYou,
            style:
                Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 23),
          ),
          Spacer(),
          Stack(
            children: [
              Container(
                height: foodGridView.length * 100 / 2.5,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5),
                  itemCount: foodGridView.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedFood = index;
                          selectedFoodPopup = true;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          foodGridView[index],
                        ),
                        decoration: BoxDecoration(
                          color: selectedFood == index
                              ? Color(0xBF83A09B)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    );
                  },
                ),
              ),
              selectedFoodPopup
                  ? Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.85),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Spacer(flex: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/image/Facebook Like.png",
                                  ),
                                  SizedBox(height: kPadding * 2),
                                  Text(
                                    "TAP\nTO LIKE",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(color: kbackgroundcolor),
                                  ),
                                ],
                              ),
                              Spacer(),
                              DottedLine(
                                lineLength: 50,
                                direction: Axis.vertical,
                                lineThickness: 1,
                                dashLength: 2,
                                dashColor: Colors.black,
                                dashGapLength: 2,
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/image/Swipe Right.png",
                                  ),
                                  SizedBox(height: kPadding * 2),
                                  Text(
                                    "SWIPE\nTO REMOVE",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(color: kbackgroundcolor),
                                  ),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                          Spacer(flex: 2),
                          Divider(
                            color: kbackgroundcolor,
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedFoodPopup = false;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    "assets/image/Close_Got_It.svg"),
                                SizedBox(
                                  width: kPadding * 2,
                                ),
                                Text(
                                  "GOT IT",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(color: kbackgroundcolor),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
          Spacer(),
          Text(
            strYouJustBurened,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 100)
        ],
      ),
    );
  }
}

///RATTING FOOD PAGE TWO....
// ignore: must_be_immutable
class RattingFoodPageTwo extends StatefulWidget {
  RattingFoodPageTwo({
    Key? key,
  }) : super(key: key);

  

  @override
  State<RattingFoodPageTwo> createState() => _RattingFoodPageTwoState();
}

class _RattingFoodPageTwoState extends State<RattingFoodPageTwo> {
  int onpageChange = 0;

  void onpageChanged(int index) {
    setState(() {
      onpageChange = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          onPageChanged: onpageChanged,
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  strHelpMeScott,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 26, letterSpacing: 0,),
                ),
                Spacer(),
                Text(
                  strDoYouLikeFlatbread,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 41,color: kWhiteColor),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.width - 280,
                  child: RattingfoodWidget(),
                ),
                Spacer(),
                Divider(
                  color: kColor,
                  endIndent: 250,
                  thickness: 2,
                ),
                Spacer(flex: 2),
                Text(
                  strWhatAboutCraft,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 41,color: kWhiteColor),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.width - 280,
                  child: RattingfoodWidget(),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  strThisOneIsPersonal,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 26),
                ),
                Spacer(),
                Text(
                  strAreYouPerson,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 41,color: kWhiteColor),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.width - 200,
                  child: RattingfoodWidget(),
                ),
                Spacer(flex: 2),
                Text(
                  strYouGreatNowWell,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 30),
                ),
                RightSideArrowwidget(),
                SizedBox(height: MediaQuery.of(context).size.height / 100 * 2),
              ],
            ),
          ],
        ),
        VerticalPageViewWigdet(
          onpageChange: onpageChange,
          totalPages: 2,
        ),
      ],
    );
  }
}

class VerticalPageViewWigdet extends StatelessWidget {
  const VerticalPageViewWigdet({
    Key? key,
    required this.onpageChange,
    required this.totalPages,
  }) : super(key: key);

  final totalPages;
  final int onpageChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < totalPages; i++)
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 3,
                    decoration: BoxDecoration(
                        color: onpageChange == i ? kColor : Colors.grey[800]),
                  ),
                  SizedBox(height: kPadding * 0.5),
                ],
              ),
          ],
        ),
      ],
    );
  }
}

class RightSideArrowwidget extends StatelessWidget {
  const RightSideArrowwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SvgPicture.asset(strRightArrow),
    );
  }
}

///ABOUT FOOD PAGE ONE....
class AboutFoodPageOne extends StatelessWidget {
  const AboutFoodPageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          strTell_Me,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 100 * 3),
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
        Divider(
          color: kColor,
        ),
        Text(
          strMyFavouriteFood,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 100 * 3),
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
        Divider(
          color: kColor,
        ),
        Text(
          strMyFavouriteDrink,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 100 * 3),
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
        Divider(
          color: kColor,
        ),
        Text(
          strMyFavouriteExercise,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
        ),
      ],
    );
  }
}

///BEST INFLUENCERS....
// ignore: must_be_immutable
class BestInfluencers extends StatefulWidget {
  // ignore: non_constant_identifier_names
  @override
  State<BestInfluencers> createState() => _BestInfluencersState();
}

class _BestInfluencersState extends State<BestInfluencers> {
  bool influencerDetailPopUp = false;

  // ignore: non_constant_identifier_names
  var InfluencerDetail = [
    strUserProfile,
    strUserSecondprofile,
    strUserThirdProfileSE,
    strUsreForthPfofileIN,
    strUserProfile,
    strUserSecondprofile,
  ];

  // ignore: non_constant_identifier_names
  var InfluencerName = [
    strInfluencerOne,
    strInfluencerTwo,
    strInfluencerThree,
    strInfluencerFour,
    strInfluencerFive,
    strInfluencerSix,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          strBestMatchFromLocal,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 100 * 6),
        Expanded(
          child: Stack(
            children: [
              Container(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kPadding * 1,
                    mainAxisSpacing: kPadding * 1,
                  ),
                  itemCount: InfluencerDetail.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              influencerDetailPopUp = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: kColor, width: 2),
                            ),
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.height / 100 * 9,
                              height:
                                  MediaQuery.of(context).size.height / 100 * 9,
                              alignment: Alignment.center,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: kbackgroundcolor, width: 3),
                                image: DecorationImage(
                                    image: AssetImage(
                                      InfluencerDetail[index],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: kPadding),
                        Text(
                          InfluencerName[index],
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 17),
                        ),
                      ],
                    );
                  },
                ),
              ),
              influencerDetailPopUp
                  ? Container(
                      color: Color.fromRGBO(255, 255, 255, 0.97),
                      height: double.infinity,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: kPadding * 2,
                            right: kPadding * 2,
                            top: kPadding * 3,
                            bottom: kPadding * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(60),
                                  ),
                                  child: Image.asset(strUserProfile),
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      strInfluencerOne,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                              color: kbackgroundcolor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              letterSpacing: 0),
                                    ),
                                    SizedBox(height: kPadding),
                                    Text(
                                      "@chefchadwhite",
                                      style:
                                          Theme.of(context).textTheme.headline4,
                                    ),
                                    SizedBox(height: kPadding * 2),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          strInstagramLogo,
                                          color: kbackgroundcolor,
                                        ),
                                        SizedBox(width: kPadding),
                                        Text(
                                          "41.1K",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.w400,
                                                  color: kbackgroundcolor),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(flex: 2),
                              ],
                            ),
                            SizedBox(
                              height: kPadding * 3,
                            ),
                            Text(
                              "FAVORITES",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      influencerDetailPopUp = false;
                                    });
                                  },
                                  child: SvgPicture.asset(
                                      "assets/image/Back_Arrow_BlackColor.svg"),
                                ),
                                Spacer(),
                                SvgPicture.asset(
                                    "assets/image/Add_to_list.svg"),
                                Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
              influencerDetailPopUp ? Container() : RightSideArrowwidget(),
            ],
          ),
        ),
      ],
    );
  }
}

////USE LOCATION.....

// ignore: must_be_immutable
class UseLocation extends StatelessWidget {
  late int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          strUseLocation,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: kColor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: kPadding * 3, horizontal: kPadding * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      strAllowAccessLocation,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0,color: kWhiteColor),
                    ),
                    SizedBox(height: kPadding * 2),
                    Text(
                      strYourCurrentLocation,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0),
                    ),
                  ],
                ),
              ),
              Container(
                height: 170,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: arrLocationPermission.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Divider(
                          color: kColor,
                          height: kPadding * 3,
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {
                              // checkLocationPermission();
                            },
                            child: Container(
                              child: Text(
                                arrLocationPermission[index],
                                style: index == 2
                                    ? Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w800,
                                        )
                                    : Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(letterSpacing: 0),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReviewBarScreen(),
              ),
            );
          },
          child: Container(
            height: 50,
            width: 50,
            child: RightSideArrowwidget(),
          ),
        ),
      ],
    );
  }
}
