import 'package:flutter/material.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/drarwe.dart';
import 'image_string.dart';
import 'text_string.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  UserProfileScreenState createState() => UserProfileScreenState();
}

class UserProfileScreenState extends State<UserProfileScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            WildLogoCloseIcon(),
            Padding(
              padding: const EdgeInsets.only(top: kPadding * 3.6),
              child: Text(
                strMyProfole,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: kbackgroundcolor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kPadding * 2, horizontal: kPadding * 3),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    child: Image.asset(
                      strUserProfile,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kPadding * 3, vertical: kPadding * 2),
              child: Row(
                children: [
                  Text(
                    strScott,
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(color: kbackgroundcolor),
                  ),
                ],
              ),
            ),
            Spacer(),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kPadding * 2.7, vertical: kPadding * 2),
              child: Row(
                children: [
                  Text(
                    strSave,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
