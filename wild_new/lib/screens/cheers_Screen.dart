import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';
import '../Widgets/logoHeaderScreen_widget.dart';
import 'list_detail_screen.dart';

class CheersScreen extends StatefulWidget {
  @override
  CheersScreenState createState() => CheersScreenState();
}

class CheersScreenState extends State<CheersScreen> {
  bool searchBar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: kPadding * 2.6, right: kPadding * 2.6),
          child: Column(
            children: [
              WildLogoMenueIconWhite(),
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100 * 4,
                        ),
                        Row(
                          children: [
                            Image.asset(strCheersGlass),
                            SizedBox(
                              width: kPadding * 2,
                            ),
                            Text(
                              strCheers,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    fontSize: 38,
                                    fontWeight: FontWeight.w200,
                                  ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  searchBar = true;
                                });
                              },
                              child: SvgPicture.asset(strSearchIcon),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100 * 4,
                        ),
                        Row(
                          children: [
                            Text(
                              strIfoundNear,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: kColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      letterSpacing: 0),
                            ),
                            Spacer(),
                            Container(
                              width: MediaQuery.of(context).size.width - 190,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: strNoteCheersScreen,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                            color: kColor,
                                            fontSize: 13,
                                            letterSpacing: 0,
                                          ),
                                    ),
                                    TextSpan(
                                      text: strSomeMayBeClosed,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                            color: kColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            letterSpacing: 0,
                                          ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 40,
                          color: kColor,
                          indent: 130,
                          thickness: 0.5,
                        ),
                        SizedBox(
                          height: kPadding,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, child) {
                              return DrinkListWidget(
                                isFavourite: false,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    searchBar
                        ? Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Color.fromRGBO(0, 0, 0, 0.85),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        100 *
                                        4),
                                Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              100 *
                                              5.5,
                                      width: MediaQuery.of(context).size.width /
                                          1.3,
                                      decoration: BoxDecoration(
                                          color: kSearchBarColorChearsScreen,
                                          borderRadius:
                                              BorderRadius.circular(32)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: kDefaultPadding),
                                      child: Center(
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(strSearchIcon)
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height /
                                      100 *
                                      4,
                                ),
                                Text(
                                  strCravingMediterranean,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(fontSize: 26),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height /
                                      100 *
                                      5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      searchBar = false;
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          strCloseIcon,
                                          color: kColor,
                                        ),
                                        SizedBox(
                                          width: kPadding,
                                        ),
                                        Text(
                                          "CANCEL",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(
                                                  color: kColor, fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrinkListWidget extends StatefulWidget {
  final bool isFavourite;

  const DrinkListWidget({
    Key? key,
    required this.isFavourite,
  }) : super(key: key);

  @override
  State<DrinkListWidget> createState() => _DrinkListWidgetState();
}

class _DrinkListWidgetState extends State<DrinkListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              strDurkinsBar,
              style: Theme.of(context).textTheme.overline!.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                  color: kWhiteColor),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListDetailScreen(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(right: 2),
                child: widget.isFavourite
                    ? InkWell(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            strLikeIcon,
                            color: kTextColor,
                          ),
                        ),
                      )
                    : Container(
                        height: 22,
                        width: 48,
                        decoration: BoxDecoration(
                          color: Colors.green[100],
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
                                    fontSize: kPadding, color: Colors.green),
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
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
                half: Icon(Icons.star_half, color: Colors.grey),
                empty: Icon(Icons.star_outline, color: Colors.grey),
              ),
              onRatingUpdate: (double value) {},
            ),
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 19,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Text(
                    strAddressBar,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Text(
                  " (509) 863-9501",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.w400, color: kWhiteColor),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Text(
                    strWebCom,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w400, color: kWhiteColor),
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
                          .copyWith(color: kColor, fontWeight: FontWeight.w500),
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
                          .copyWith(color: kColor, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: kPadding * 0.8,
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
        SizedBox(height: kPadding * 2),
        Divider(
          color: kColor,
        ),
        SizedBox(height: kPadding * 2),
      ],
    );
  }
}
