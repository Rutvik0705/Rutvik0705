import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';
import 'drinks_load_FirstScreen.dart';
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
        child: Padding(
          padding: EdgeInsets.only(left: kPadding * 3, right: kPadding * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoHeaderScreen(),
              Spacer(flex: 4),
              SvgPicture.asset(strUserContact),
              Spacer(),
              Text(
                strAccessYourContact,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Spacer(),
              Text(
                strFrdMettingNdConnection,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Spacer(),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DrinksLoadFirstScreen(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      strCloseRound,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      checkContactPermission(context);
                    },
                    child: SvgPicture.asset(
                      strTrueRound,
                    ),
                  ),
                  Spacer(flex: 3),
                ],
              ),
              Spacer(flex: 6),
            ],
          ),
        ),
      ),
    );
  }

  checkContactPermission(BuildContext context) async {
    if (await Permission.contacts.request().isGranted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DrinksLoadFirstScreen(),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DrinksLoadFirstScreen(),
        ),
      );
    }

    Map<Permission, PermissionStatus> statuses = await [
      Permission.contacts,
    ].request();
    print("${statuses[Permission.contacts]}");

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
