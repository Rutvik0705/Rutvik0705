import 'package:flutter/material.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/screens/drarwe_screen.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  UserProfileScreenState createState() => UserProfileScreenState();
}

class UserProfileScreenState extends State<UserProfileScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDrowerBackGroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: kPadding * 3, right: kPadding * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WildLogoCloseIcon(),
              Spacer(),
              Center(
                child: Text(
                  strMyProfole,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: kbackgroundcolor),
                ),
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                child: Image.asset(
                  strUserProfile,
                ),
              ),
              Spacer(),
              Text(
                strScott,
                style: Theme.of(context)
                    .textTheme
                    .overline!
                    .copyWith(color: kbackgroundcolor),
              ),
              Spacer(flex: 15),
              Divider(
                color: kbackgroundcolor,
              ),
              Text(
                strSave,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
