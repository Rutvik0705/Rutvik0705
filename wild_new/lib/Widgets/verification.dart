import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/backbuttonwithtitlewidget.dart';
import 'package:wild_new/confirmation.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/logoHeaderScreen.dart';

class Verification extends StatefulWidget {
  @override
  VerificationState createState() => VerificationState();
}

class VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              LogoHeaderScreen(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
              ),
              BackbuttonWithTitleWidget(
                navigationTitle: 'VERIFICATION CODE',
                onClickBack: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    Text(
                      "Confirmation",
                      style: Theme.of(context).textTheme.headline3,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Column(
                children: [
                  Text(
                    "Please enter he code ent to",
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "+5098361325",
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding),
                child: Row(
                  children: [
                    Container(
                      height: 74,
                      width: 69,
                      decoration: BoxDecoration(
                        color: kbottomAppBarcolor,
                        borderRadius: BorderRadius.circular(55),
                      ),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: kPadding,
                    ),
                    Container(
                      height: 74,
                      width: 69,
                      decoration: BoxDecoration(
                        color: kbottomAppBarcolor,
                        borderRadius: BorderRadius.circular(55),
                      ),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: kPadding,
                    ),
                    Container(
                      height: 74,
                      width: 69,
                      decoration: BoxDecoration(
                        color: kbottomAppBarcolor,
                        borderRadius: BorderRadius.circular(55),
                      ),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: kPadding,
                    ),
                    Container(
                      height: 74,
                      width: 69,
                      decoration: BoxDecoration(
                        color: kbottomAppBarcolor,
                        borderRadius: BorderRadius.circular(55),
                      ),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Column(
                children: [
                  Text(
                    'RESEND CODE',
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
              SizedBox(
                height: kPadding * 3,
              ),
              InkWell(
                onTap: () {
                  //print("ritvik");
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
                      color: kColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(55),
                  ),
                  child: Center(
                    child: Text(
                      'VERIFY',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          KeyboardButtonWidget(
                            strNumber: '1',
                            onTap: (String value) {
                              print('1');
                            },
                          ),
                          KeyboardButtonWidget(
                            strNumber: '2',
                            onTap: (String value) {
                              print("2");
                            },
                          ),
                          KeyboardButtonWidget(
                            strNumber: '3',
                            onTap: (String value) {
                              print("3");
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          KeyboardButtonWidget(
                            strNumber: '4',
                            onTap: (String value) {
                              print("4");
                            },
                          ),
                          KeyboardButtonWidget(
                            strNumber: '5',
                            onTap: (String value) {
                              print("5");
                            },
                          ),
                          KeyboardButtonWidget(
                            strNumber: '6',
                            onTap: (String value) {
                              print("6");
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          KeyboardButtonWidget(
                            strNumber: '7',
                            onTap: (String value) {
                              print("7");
                            },
                          ),
                          KeyboardButtonWidget(
                            strNumber: '8',
                            onTap: (String value) {
                              print("8");
                            },
                          ),
                          KeyboardButtonWidget(
                            strNumber: '9',
                            onTap: (String value) {
                              print("9");
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                            ),
                          ),
                          KeyboardButtonWidget(
                            strNumber: '0',
                            onTap: (String value) {
                              print("0");
                            },
                          ),
                          Expanded(
                            child: Container(
                              height: 50,
                              child: Center(
                                child: SvgPicture.asset(
                                  "assets/image/delete.svg",
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class KeyboardButtonWidget extends StatelessWidget {
  const KeyboardButtonWidget({
    Key? key,
    required this.strNumber,
    required this.onTap,
  }) : super(key: key);

  final String strNumber;
  final Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onTap(strNumber);
        },
        child: Container(
          height: 50,
          child: Center(
            child: Text(
              strNumber,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ),
      ),
    );
  }
}
