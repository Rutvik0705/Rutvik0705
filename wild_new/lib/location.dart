import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:location/location.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/logoHeaderScreen.dart';
import 'package:wild_new/permission_request.dart';
// ignore: unused_import
import 'package:wild_new/location.dart';

class LocationScreen extends StatefulWidget {
  @override
  LocationState createState() => LocationState();
}

var help = [
  "Only while using the App",
  "Always Allow for AI Learning",
  "Don’t Allow",
];

class LocationState extends State<LocationScreen> {
  late int selectedIndex = 3;
  // Location _locationService = new Location();
  // late LocationData initialLocation;
  // late LocationData _currentLocation;

  // bool _permissionGranted = false;
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
                    "We need some help \nhear",
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
                  child: SvgPicture.asset("assets/image/location.svg"),
                ),
                Text(
                  "Can we access your\nlocation?",
                  style: Theme.of(context).textTheme.overline,
                ),
                SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  "assets/image/question_mark.svg",
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
                itemCount: help.length,
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
                                          'assets/image/true.svg',
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
                                      help[index],
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
                  child: SvgPicture.asset("assets/image/bell.svg"),
                ),
                Text(
                  "Can we send you\nnotifications?",
                  style: Theme.of(context).textTheme.overline,
                ),
                SizedBox(
                  width: 30,
                ),
                SvgPicture.asset(
                  "assets/image/question_mark.svg",
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
                    "assets/image/close_round.svg",
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
                    //print("ritvik");
                    // LocationPermissions().openAppSettings().then(
                    //       (bool hasOpened) => debugPrint(
                    //         'App Settings opened: ' + hasOpened.toString(),
                    //       ),
                    //     );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PermissionRequestScreen(),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/image/true_round.svg",
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
    Location _locationService = new Location();
    bool serviceEnabled = await _locationService.serviceEnabled();
    if (serviceEnabled) {
      var stauts = await _locationService.requestPermission();

      if (stauts == PermissionStatus.granted) {
        setState(
          () {
            selectedIndex = 1;
          },
        );
      } else if (stauts == PermissionStatus.grantedLimited) {
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
}
