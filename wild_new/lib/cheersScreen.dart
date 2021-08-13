import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/list_detail_screen.dart';
import 'image_string.dart';
import 'logoHeaderScreen.dart';
import 'text_string.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.8),
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
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: kPadding * 2,
                  ),
                  Column(
                    children: [
                      Text(
                        strSomeMayBeClosed,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: kColor, fontWeight: FontWeight.w500,fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 40,
                color: kColor,
                indent: 140,
                thickness: 0.5,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, child) {
                    return DrinkListWidget();
                  },
                ),
              )
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
    return Container(
      child: Column(
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
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SvgPicture.asset(strStarReatting),
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
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: kColor, fontWeight: FontWeight.w500),
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
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: kColor, fontWeight: FontWeight.w500),
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
        ],
      ),
    );
  }
}
