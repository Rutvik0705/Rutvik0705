import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';
import 'wildLoad_screen.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionRequestScreen extends StatefulWidget {
  @override
  PermissionRequestState createState() => PermissionRequestState();
}

class PermissionRequestState extends State<PermissionRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      body: SafeArea(
        child: Column(
          children: [
            LogoHeaderScreen(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
              child: Row(
                children: [
                  SvgPicture.asset(strUserContact),
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
                    strAccessYourContact,
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
                    strFrdMettingNdConnection,
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPadding * 3,
                vertical: kPadding * 2,
              ),
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
                      strCloseRound,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kPadding * 4,
                    ),
                    child: InkWell(
                      onTap: () {
                        checkContactPermission(context);
                      },
                      child: SvgPicture.asset(
                        strTrueRound,
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
    if (await Permission.contacts.request().isGranted) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoadScreen(),
          ),
        );
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoadScreen(),
          ),
        );
    }
    Map<Permission, PermissionStatus> statuses = await [
      Permission.contacts,
    ].request();
    print("${statuses[Permission.location]}");
    
    // ignore: unused_local_variable
    // Iterable<Contact> contacts = await ContactsService.getContacts();
    // Type permission = PermissionStatus;
    // // ignore: unrelated_type_equality_checks
    // if (permission == PermissionStatus.granted) {
    // } else {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => LoadScreen(),
    //   ),
    //   );
    // }
  }
}
