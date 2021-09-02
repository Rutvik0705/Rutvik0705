import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/screens/user_profile_screen.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';

import 'FavouriteBar_Screen.dart';

class DrawerScreen extends StatefulWidget {
  @override
  DrawerScreenState createState() => DrawerScreenState();
}

class DrawerScreenState extends State<DrawerScreen> {
  final List<Menu> _allMenu = Menu.allMenu();
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDrowerBackGroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: kPadding * 3, right: kPadding * 3),
              child: WildLogoCloseIcon(),
            ),
            Spacer(),
            Center(
              child: Text(
                strWhatILikeToDo,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: kbackgroundcolor),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding * 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    strHelloScott,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: kScott),
                  ),
                  Container(
                    // color: kbackgroundcolor,
                    height: MediaQuery.of(context).size.height / 100 * 55,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _allMenu.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        MediaQuery.of(context).size.height /
                                            100 *
                                            1.5),
                                child: InkWell(
                                  onTap: () {
                                    switch (index) {
                                      case 0:
                                        break;
                                      case 1:
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                UserProfileScreen(),
                                          ),
                                        );
                                        break;
                                      case 2:
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                FavouriteBarScreen(),
                                          ),
                                        );
                                        break;
                                      case 3:
                                        break;
                                      case 4:
                                        break;
                                      default:
                                    }
                                  },
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        _allMenu[index].image,
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              100 *
                                              2),
                                      Text(
                                        _allMenu[index].name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3!
                                            .copyWith(
                                              color: Colors.black,
                                              fontSize: 35,
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 4),
            Divider(
              color: Colors.black,
              height: MediaQuery.of(context).size.height / 100 * 5,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: kPadding * 3,
                bottom: kPadding * 2,
              ),
              child: Text(
                strsignOut,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: kbackgroundcolor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WildLogoCloseIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          strCloseIcon,
          color: Colors.transparent,
        ),
        Spacer(),
        SvgPicture.asset(strOnlyWildIcon),
        Spacer(),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(strCloseIcon),
        ),
      ],
    );
  }
}

enum forMenu { ai_instat, profile, favourite, connection, support }

class Menu {
  final String image;
  final String name;
  final forMenu formenu;
  Menu({required this.image, required this.name, required this.formenu});

  static List<Menu> allMenu() {
    var listOfAllMenu = <Menu>[];
    listOfAllMenu.add(new Menu(
        image: strNewAiInstan, name: strAiInstan, formenu: forMenu.ai_instat));
    listOfAllMenu.add(new Menu(
        image: strProfileSmile, name: strProfile, formenu: forMenu.profile));
    listOfAllMenu.add(new Menu(
        image: strDaimond, name: strFavourite, formenu: forMenu.favourite));
    listOfAllMenu.add(new Menu(
        image: strConnections,
        name: strConnection,
        formenu: forMenu.connection));
    listOfAllMenu.add(new Menu(
        image: strSetting, name: strSupport, formenu: forMenu.support));

    return listOfAllMenu;
  }
}
