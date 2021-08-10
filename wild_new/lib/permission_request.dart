import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:location/location.dart';
import 'package:wild_new/constant.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:wild_new/logoHeaderScreen.dart';
import 'wildLoadScreen.dart';

class PermissionRequestScreen extends StatefulWidget {
  @override
  PermissionRequestState createState() => PermissionRequestState();
}

class PermissionRequestState extends State<PermissionRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LogoHeaderScreen(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
              child: Row(
                children: [SvgPicture.asset("assets/image/contact.svg")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: kPadding * 2,
                horizontal: kPadding * 2.5,
              ),
              child: Row(
                children: [
                  Text(
                    "We would like to \naccess your contacts",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: kPadding * 2,
                horizontal: kPadding * 2.5,
              ),
              child: Row(
                children: [
                  Text(
                    "We use your contacts to add\nfriends to the app for\nmeeting up & connecting.",
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kPadding * 3, vertical: kPadding * 2),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoadScreen(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      "assets/image/close_round.svg",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kPadding * 4,
                    ),
                    child: InkWell(
                      onTap: () {
                        checkContactPermission(context);

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => LoadScreen(),
                        //   ),
                        // );
                      },
                      child: SvgPicture.asset(
                        "assets/image/true_round.svg",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  checkContactPermission(BuildContext context) async {
    // ignore: unused_local_variable
    Iterable<Contact> contacts = await ContactsService.getContacts();
    Type permission = PermissionStatus;
    // ignore: unrelated_type_equality_checks
    if (permission == PermissionStatus.granted) {
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoadScreen(),
        ),
      );
    }
  }
}
