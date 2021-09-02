import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/Widgets/backbuttonwithtitlewidget.dart';
import 'package:wild_new/screens/confirmation_screen.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';

class Verification extends StatefulWidget {
  final String sendNumber;
  const Verification({Key? key, required this.sendNumber}) : super(key: key);
  @override
  VerificationState createState() => VerificationState();
}

class VerificationState extends State<Verification> {
  String otpNumber = "";
  var otpFill = 0;

  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoHeaderScreen(),
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 5),
              BackbuttonWithTitleWidget(
                navigationTitle: srtVerificationNumber,
                onClickBack: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100,
              ),
              Text(
                strConfirrmation,
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 2),
              Center(
                child: Text(
                  strEnterTheCode,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Center(
                child: Text(
                  widget.sendNumber,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 2),
              Row(
                children: [
                  Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height / 100 * 9,
                    width: MediaQuery.of(context).size.height / 100 * 8.5,
                    decoration: BoxDecoration(
                        color: otpNumber.length >= 1
                            ? kTextColor
                            : kbottomAppBarcolor,
                        borderRadius: BorderRadius.circular(38)),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Center(
                      child: Text(
                        otpNumber.length > 0 ? otpNumber.substring(0, 1) : "",
                        style: TextStyle(
                            fontSize: 33,
                            color: otpFill == 0
                                ? kbackgroundcolor
                                : Colors.transparent),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height / 100 * 9,
                    width: MediaQuery.of(context).size.height / 100 * 8.5,
                    decoration: BoxDecoration(
                        color: otpNumber.length >= 2
                            ? kTextColor
                            : kbottomAppBarcolor,
                        borderRadius: BorderRadius.circular(38)),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Center(
                      child: Text(
                        otpNumber.length > 1 ? otpNumber.substring(1, 2) : "",
                        style: TextStyle(
                            fontSize: 33,
                            color: otpFill == 0
                                ? kbackgroundcolor
                                : Colors.transparent),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height / 100 * 9,
                    width: MediaQuery.of(context).size.height / 100 * 8.5,
                    decoration: BoxDecoration(
                        color: otpNumber.length >= 3
                            ? kTextColor
                            : kbottomAppBarcolor,
                        borderRadius: BorderRadius.circular(38)),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Center(
                      child: Text(
                        otpNumber.length > 2 ? otpNumber.substring(2, 3) : "",
                        style: TextStyle(
                            fontSize: 33,
                            color: otpFill == 0
                                ? kbackgroundcolor
                                : Colors.transparent),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height / 100 * 9,
                    width: MediaQuery.of(context).size.height / 100 * 8.5,
                    decoration: BoxDecoration(
                        color: otpNumber.length >= 4
                            ? kTextColor
                            : kbottomAppBarcolor,
                        borderRadius: BorderRadius.circular(38)),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Center(
                      child: Text(
                        otpNumber.length > 3 ? otpNumber.substring(3, 4) : "",
                        style: TextStyle(
                            fontSize: 33,
                            color: otpFill == 0
                                ? kbackgroundcolor
                                : Colors.transparent),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 2),
              Center(
                child: Text(
                  strResendCode,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 3),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Confirmation(),
                      ),
                    );
                  },
                  child: Container(
                    height: 45,
                    width: 217,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kWhiteColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: Center(
                      child: Text(strVerify,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: kWhiteColor)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 2),
              KeyboardButtonWidget(
                onNumberSelected: (value) {
                  setState(() {
                    if (value != -1) {
                      if (otpNumber.length < 4) {
                        otpNumber = otpNumber + value.toString();
                      }
                    } else {
                      otpNumber = otpNumber.substring(0, otpNumber.length - 1);
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class KeyboardButtonWidget extends StatelessWidget {
  final Function(int) onNumberSelected;
  const KeyboardButtonWidget({
    Key? key,
    required this.onNumberSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.090,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildNumber(1),
                buildNumber(2),
                buildNumber(3),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.090,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildNumber(4),
                buildNumber(5),
                buildNumber(6),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.090,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildNumber(7),
                buildNumber(8),
                buildNumber(9),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.090,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                emptySpace(),
                buildNumber(0),
                backSpace(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNumber(int number) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onNumberSelected(number);
        },
        child: Container(
          child: Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: kTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget emptySpace() {
    return Expanded(child: Container());
  }

  Widget backSpace() {
    return Expanded(
      child: InkWell(
        onTap: () {
          onNumberSelected(-1);
        },
        child: Container(
          child: Center(child: SvgPicture.asset(strDeleteIcon)),
        ),
      ),
    );
  }
}
