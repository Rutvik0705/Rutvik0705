import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/constant.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/navigator.dart' show Navigator;
import 'package:wild_new/logoHeaderScreen.dart';
import '../backbuttonwithtitlewidget.dart';
import 'verification.dart';

class SendCodeScreen extends StatefulWidget {
  @override
  SecondCodeScreenState createState() => SecondCodeScreenState();
}

class SecondCodeScreenState extends State<SendCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          child: Column(
            children: [
              LogoHeaderScreen(),
              SizedBox(
                height: kDefaultPadding * 2,
              ),
              BackbuttonWithTitleWidget(
                navigationTitle: 'SEND CODE',
                onClickBack: () {
                  Navigator.pop(context);
                },
              ),
              Spacer(),
              Text(
                'We will sendyou a verification code to your phone number.',
                style: Theme.of(context).textTheme.headline3,
                maxLines: 3,
              ),
              SizedBox(height: kDefaultPadding * 2),
              Container(
                height: 64,
                decoration: BoxDecoration(
                    color: kbottomAppBarcolor,
                    borderRadius: BorderRadius.circular(32)),
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        //hintText: "Enter mobile number",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding * 2),
              Row(
                children: [
                  Text('SUBMIT', style: Theme.of(context).textTheme.headline5),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Verification(),
                        ),
                      );
                    },
                    child: SvgPicture.asset("assets/image/right_arrow.svg"),
                  ),
                ],
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
