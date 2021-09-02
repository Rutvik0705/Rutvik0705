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
  TextEditingController mobileNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: kPadding * 3, right: kPadding * 3),
          child: Column(
            children: [
              LogoHeaderScreen(),
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 5),
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
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 5),
              Container(
                height: 64,
                decoration: BoxDecoration(
                    color: kbottomAppBarcolor,
                    borderRadius: BorderRadius.circular(32)),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Center(
                  child: TextField(
                    controller: mobileNumber,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 2),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Verification(sendNumber: mobileNumber.text),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 140,
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
                  ),
                ],
              ),
              Spacer(
                flex: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
