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
        child: Column(
          children: [
            LogoHeaderScreen(),
            SizedBox(height: kPadding * 4.2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.3),
              child: Row(
                children: [
                  Text(
                    strWeNeedSomeHelp,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kDefaultPadding * 2.7,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
                  child: SvgPicture.asset(strLocationImage),
                ),
                Text(
                  strCanWeAccessLocation,
                  style: Theme.of(context).textTheme.overline,
                ),
                SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  strQuestionMark,
                ),
              ],
            ),
            SizedBox(
              height: kPadding * 4,
            ),
            Container(
              height: 200,
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
                              Padding(
                                padding: EdgeInsets.only(left: kPadding * 3),
                                child: Container(
                                  child: selectedIndex == index
                                      ? SvgPicture.asset(
                                          strTrueIcon,
                                          width: kPadding * 2,
                                        )
                                      : Container(
                                          width: kPadding * 2,
                                        ),
                                ),
                              ),
                              SizedBox(width: kPadding),
                              InkWell(
                                onTap: () {
                                  checkLocationPermission();
                                },
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: kPadding * 1.5,
                                    ),
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
                                              .headline5,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(kPadding * 2.5),
                          child: Container(
                            color: Colors.white,
                            height: 0.3,
                            width: 300,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: kPadding * 4,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
                  child: SvgPicture.asset(strBellIcon),
                ),
                Text(
                  strCanWeSendNotification,
                  style: Theme.of(context).textTheme.overline,
                ),
                SizedBox(
                  width: 30,
                ),
                SvgPicture.asset(
                  strQuestionMark,
                ),
              ],
            ),
            SizedBox(
              height: kPadding * 3,
            ),
            Row(
              children: [
                SizedBox(
                  width: kPadding * 9,
                ),
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
                SizedBox(
                  width: kPadding * 4.1,
                ),
                Container(
                  height: 54,
                  width: 0.5,
                  color: kColor,
                ),
                SizedBox(
                  width: kPadding * 4.1,
                ),
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
              ],
            ),
          ],
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