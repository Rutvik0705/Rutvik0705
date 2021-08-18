import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';
import '../Widgets/logoHeaderScreen_widget.dart';
// ignore: unused_import
import 'list_detail_screen.dart';

class CheersScreen extends StatefulWidget {
  @override
  CheersScreenState createState() => CheersScreenState();
}

class CheersScreenState extends State<CheersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              right: kPadding * 2.8, left: kPadding * 2.8),
          child: Column(
            children: [
              WildLogoMenueIconWhite(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kPadding * 3.6,
                ),
                child: Row(
                  children: [
                    Image.asset(strCheersGlass),
                    SizedBox(
                      width: kPadding * 2,
                    ),
                    Text(
                      strCheers,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 38,
                            fontWeight: FontWeight.w200,
                          ),
                    ),
                    Spacer(),
                    SvgPicture.asset(strSearchIcon),
                  ],
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        strIfoundNear,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: kColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: kPadding * 2.8,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: strNoteCheersScreen,
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    color: kColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13,
                                  ),
                        ),
                        TextSpan(
                          text: strSomeMayBeClosed,
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    color: kColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    letterSpacing: 0,
                                  ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                height: 40,
                color: kColor,
                indent: 150,
                thickness: 0.5,
              ),
              SizedBox(
                height: kPadding,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, child) {
                    return DrinkListWidget();
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

class DrinkListWidget extends StatelessWidget {
  const DrinkListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              strDurkinsBar,
              style: Theme.of(context)
                  .textTheme
                  .overline!
                  .copyWith(fontSize: 24, fontWeight: FontWeight.w300),
            ),
            Spacer(),
            // Container(
            //   color: Colors.green[200],
            //   height: 22,
            //   width: 48,
            //   // decoration: BoxDecoration(
            //   //   boxShadow: [
            //   //     BoxShadow(
            //   //       color: Colors.green,
            //   //       offset: Offset(2.0, 2.0),
            //   //     ),
            //   //   ],
            //   // ),
            //   child: Center(
            //     child: Text(
            //       "OPEN",
            //       style: Theme.of(context)
            //           .textTheme
            //           .bodyText1!
            //           .copyWith(fontSize: kPadding, color: Colors.green),
            //     ),
            //   ),
            // ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListDetailScreen(),
                  ),
                );
              },
              child: SvgPicture.asset(
                strOpenButton,
                height: 30,
                width: 12,
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
              /* onRatingUpdate: (value) {
                  setState(() {
                    _ratingValue = value;
                  });
                }*/
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
                Text(
                  strAddressBar,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
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
                      .copyWith(fontWeight: FontWeight.w400, color: kColor),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  strWebCom,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.w400, color: kColor),
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
