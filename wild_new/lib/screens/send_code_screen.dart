import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/utility/constant.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/navigator.dart' show Navigator;
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';
import '../Widgets/backbuttonwithtitlewidget.dart';
import 'verification_number_screen.dart';

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
                height: kPadding * 6,
              ),
              BackbuttonWithTitleWidget(
                navigationTitle: strSendCode,
                onClickBack: () {
                  Navigator.pop(context);
                },
              ),
              Spacer(),
              Text(
                srtVerificationCode,
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
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding * 2),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Verification(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text(srtSubmit,
                        style: Theme.of(context).textTheme.headline5),
                    SizedBox(
                      width: kPadding,
                    ),
                    SvgPicture.asset(strRightArrow),
                  ],
                ),
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
