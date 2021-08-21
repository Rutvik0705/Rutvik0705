import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';
import 'location_permission_screen.dart';
import 'review_bar_Screen.dart';

// ignore: must_be_immutable
class AboutFoodScreen extends StatefulWidget {
  AboutFoodScreen();
  @override
  AboutFoodScreenState createState() => AboutFoodScreenState();

  var allPages = [
    AboutFoodPageOne(),
    RattingFoodPageTwo(),
    HungryTooListWidget(),
    BestInfluencers(),
    UseLocation(),
  ];
}

class AboutFoodScreenState extends State<AboutFoodScreen> {
  final PageController controller = PageController();
  // final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
  }

  void _pageChanged(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
        child: SafeArea(
          child: Column(
            children: [
              WildLogoMenueIconWhite(),
              SizedBox(
                height: kPadding * 3.8,
              ),
              Row(
                children: [
                  // _buildCircleIndicator(
                  //   controller: controller,
                  //   itemConunt: widget.allPages.length,
                  // ),
                  // Indicator(
                  //   controller: controller,
                  //   itemCount: widget.allPages.length,
                  // ),
                ],
              ),
              SizedBox(
                height: kPadding * 3,
              ),
              Flexible(
                child: PageView.builder(
                  onPageChanged: _pageChanged,
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.allPages.length,
                  itemBuilder: (context, index) {
                    return widget.allPages[index];
                  },
                  // onPageChanged: (int index) {
                  //   _currentPageNotifier.value = index;
                  // },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// HUNGRY TOO LIST WIDGET....
// ignore: must_be_immutable
class HungryTooListWidget extends StatefulWidget {
  HungryTooListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HungryTooListWidget> createState() => _HungryTooListWidgetState();
}

class _HungryTooListWidgetState extends State<HungryTooListWidget> {
  int selectedFood = 0;

  var FoodGridView = [
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

  // int get index = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Pick all the ones you like…\nIs this making you\nhungry too?",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 26),
              ),
            ],
          ),
          SizedBox(height: kPadding * 4),
          Container(
            height: FoodGridView.length * 120 / 3,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: FoodGridView.length,
              itemBuilder: (BuildContext ctx, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedFood = index;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      FoodGridView[index],
                    ),
                    decoration: BoxDecoration(
                      color: selectedFood == index
                          ? Color(0xBF83A09B)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                );
              },
            ),
          ),
          Spacer(),
          Row(
            children: [
              Text(
                "(You just burned .5 calories training)",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
              )
            ],
          )
        ],
      ),
    );
  }
}

///RATTING FOOD PAGE TWO....
class RattingFoodPageTwo extends StatelessWidget {
  const RattingFoodPageTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          children: [
            Row(
              children: [
                Text(
                  "Help me help you, Scott.",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 26),
                ),
              ],
            ),
            SizedBox(
              height: kPadding * 4,
            ),
            Row(
              children: [
                Text(
                  "Do you like\nflatbread 🍕?",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 41),
                ),
              ],
            ),
            SizedBox(
              height: kPadding * 5,
            ),
            RattingfoodWidget(),
            SizedBox(
              height: kPadding * 7,
            ),
            Divider(
              color: kColor,
              endIndent: 270,
              thickness: 2,
            ),
            SizedBox(
              height: kPadding * 8,
            ),
            Row(
              children: [
                Text(
                  "What about\ncraft 🍺?",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 41),
                ),
              ],
            ),
            SizedBox(
              height: kPadding * 7,
            ),
            RattingfoodWidget(),
          ],
        ),
        Column(
          children: [
            Spacer(),
            Row(
              children: [
                Text(
                  "This one is personal...",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 26),
                ),
              ],
            ),
            SizedBox(
              height: kPadding * 8,
            ),
            Row(
              children: [
                Text(
                  "Are you a 🍣\nperson?",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 41),
                ),
              ],
            ),
            SizedBox(
              height: kPadding * 5,
            ),
            RattingfoodWidget(),
            SizedBox(
              height: kPadding * 20.9,
            ),
            Row(
              children: [
                Text(
                  "You did great!\nNow, we’ll focus on\na few more of your\npreferences.",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 30),
                ),
              ],
            ),
            RightSideArrowwidget()
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

///RATTING FOOD WIDGET....
class RattingfoodWidget extends StatefulWidget {
  const RattingfoodWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RattingfoodWidget> createState() => _RattingfoodWidgetState();
}

class _RattingfoodWidgetState extends State<RattingfoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Text("😔"),
        Spacer(),
        Text("👎🏻"),
        Spacer(),
        Text("👍🏻"),
        Spacer(),
        Text("🎉"),
        Spacer(),
      ],
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
      children: [
        Row(
          children: [
            Text(
              strTell_Me,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
            ),
          ],
        ),
        SizedBox(height: kPadding * 3),
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
        Divider(
          color: kColor,
        ),
        Row(
          children: [
            Text(
              strMyFavouriteFood,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
            ),
          ],
        ),
        SizedBox(height: kPadding * 3),
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
        Divider(
          color: kColor,
        ),
        Row(
          children: [
            Text(
              strMyFavouriteDrink,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
            ),
          ],
        ),
        SizedBox(height: kPadding * 3),
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
        Divider(
          color: kColor,
        ),
        Row(
          children: [
            Text(
              strMyFavouriteExercise,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
            ),
          ],
        ),
      ],
    );
  }
}

/// INDICATOR.....
// class Indicator extends StatelessWidget {
//   Indicator({
//     required this.controller,
//     this.itemCount: 0,
//   });

//   final PageController controller;

//   final int itemCount;

//   final Color normalColor = Colors.grey;

//   final Color selectedColor = Colors.white;

//   final double size = 9.0;

//   final double spacing = kPadding * 0.5;

//   Widget _buildIndicator(
//       int index, int pageCount, double dotSize, double spacing) {
//     bool isCurrentPageSelected = index ==
//         (controller.page != null ? controller.page!.round() % pageCount : 0);

//     return new Container(
//       height: size,
//       width: size + (2 * spacing),
//       child: new Center(
//         child: new Material(
//           color: isCurrentPageSelected ? selectedColor : normalColor,
//           type: MaterialType.circle,
//           child: new Container(
//               // width: dotSize,
//               // height: dotSize,
//               ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: new List<Widget>.generate(
//         itemCount,
//         (int index) {
//           return _buildIndicator(index, itemCount, size, spacing);
//         },
//       ),
//     );
//   }
// }

///BEST INFLUENCERS....
// ignore: must_be_immutable
class BestInfluencers extends StatelessWidget {
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
    "chefchadwhite",
    "chefboyarduff",
    "spokaneeats",
    "Thelinlander",
    "Influencer5",
    "Influencer6",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Best match from local\ninfluencers:",
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
            ),
          ],
        ),
        SizedBox(
          height: kPadding * 4.8,
        ),
        Expanded(
          child: Container(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: kPadding,
                mainAxisSpacing: kPadding * 1,
              ),
              itemCount: InfluencerDetail.length,
              itemBuilder: (BuildContext ctx, index) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: kColor, width: 2),
                        image: DecorationImage(
                            image: AssetImage(
                              InfluencerDetail[index],
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: kbackgroundcolor, width: 3),
                          image: DecorationImage(
                              image: AssetImage(
                                InfluencerDetail[index],
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(height: kPadding),
                    Text(InfluencerName[index],
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 17)),
                  ],
                );
              },
            ),
          ),
        ),
        RightSideArrowwidget(),
      ],
    );
  }
}

// _buildCircleIndicator(
//     {required int itemConunt, required PageController controller}) {
//   return CirclePageIndicator(
//       size: 16.0,
//       selectedSize: 18.0,
//       itemCount: 5,
//       currentPageNotifier: _currentPageNotifier.value = index
//       // itemCount: allPages.length,
//       // currentPageNotifier: _currentPageNotifier,
//       );
// }

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
          "Use location",
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
        ),
        Spacer(),
        Center(
          child: Container(
            // height: 482,
            decoration: BoxDecoration(
              border: Border.all(color: kColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: kPadding * 3, horizontal: kPadding * 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Allow “WILD” to access\nyour location while you\nare using the app?",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: kPadding * 2),
                      Text(
                        "Your current location is used\nby WILD AI to find you\nnearby restaurants, bars and\nother places based on what\nyou doing.",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 240,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: arrLocationPermission.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Divider(
                              color: kColor,
                              height: kPadding * 5,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Padding(
                                  //   padding:
                                  //       EdgeInsets.only(left: kPadding * 3),
                                  //   child: Container(
                                  //     child: selectedIndex == index
                                  //         ? SvgPicture.asset(
                                  //             strTrueIcon,
                                  //             width: kPadding * 2,
                                  //           )
                                  //         : Container(
                                  //             width: kPadding * 2,
                                  //           ),
                                  //   ),
                                  // ),
                                  // SizedBox(width: kPadding),
                                  InkWell(
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
                                                  fontWeight: FontWeight.w800,
                                                )
                                            : Theme.of(context)
                                                .textTheme
                                                .headline5,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
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
          child: RightSideArrowwidget(),
        ),
      ],
    );
  }
}
