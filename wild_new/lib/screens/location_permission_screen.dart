import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/screens/contacts_access_screen.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';

class LocationScreen extends StatefulWidget {
  @override
  LocationState createState() => LocationState();
}

var arrLocationPermission = [
  strOnlyUsingApp,
  strAlwaysAiLearning,
  strDontAllow,
];

class LocationState extends State<LocationScreen> {
  late int selectedIndex = 3;

  late String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.3),
          child: Column(
            children: [
              LogoHeaderScreen(),
              Spacer(),
              Text(
                strWeNeedSomeHelp,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Spacer(),
              Row(
                children: [
                  SvgPicture.asset(strLocationImage),
                  Spacer(),
                  Text(
                    strCanWeAccessLocation,
                    style: Theme.of(context).textTheme.overline,
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    strQuestionMark,
                  ),
                  // Spacer(),
                ],
              ),
              Spacer(),
              Container(
                height: 170,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: arrLocationPermission.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: selectedIndex == index
                                      ? SvgPicture.asset(
                                          strTrueIcon,
                                          width: kPadding * 2,
                                        )
                                      : Container(
                                          width: kPadding * 2,
                                        ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 15,
                                ),
                                // Spacer(),
                                InkWell(
                                  onTap: () {
                                    checkLocationPermission();
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
                                              .headline5!
                                              .copyWith(letterSpacing: 0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 0.3,
                            color: kColor,
                            height: kPadding * 3.5,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Spacer(),
              Row(
                children: [
                  SvgPicture.asset(strBellIcon),
                  Spacer(),
                  Text(
                    strCanWeSendNotification,
                    style: Theme.of(context).textTheme.overline,
                  ),
                  Spacer(flex: 2),
                  SvgPicture.asset(
                    strQuestionMark,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PermissionRequestScreen(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      strCloseRound,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 54,
                    width: 0.5,
                    color: kColor,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PermissionRequestScreen(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      strTrueRound,
                    ),
                  ),
                  Spacer()
                ],
              ),
              Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }

  checkLocationPermission() async {
    if (await Permission.location.request().isGranted) {}
    Map<Permission, PermissionStatus> stauts = await [
      Permission.location,
    ].request();

    Permission.location.request();
    print("Status${stauts[Permission.location]}");

    if (stauts[Permission.location] == PermissionStatus.granted) {
      setState(
        () {
          selectedIndex = 1;
        },
      );
    } else if (stauts[Permission.location] == PermissionStatus.limited) {
      setState(
        () {
          selectedIndex = 0;
        },
      );
    } else {
      setState(
        () {
          selectedIndex = 2;
        },
      );
    }
  }
}
