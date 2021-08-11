import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/constant.dart';
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
                    width: kPadding * 2.1,
                  ),
                  Column(
                    children: [
                      Text(
                        strSomeMayBeClosed,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: kColor, fontWeight: FontWeight.w500),
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
                  SvgPicture.asset(
                    strOpenButton,
                    height: 30,
                    width: 12,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/image/star_reattiing.svg"),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text("415 W Main Ave,\nSpokane, WA 99201",style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: kColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}