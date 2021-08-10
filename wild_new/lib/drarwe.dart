import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/user_profile.dart';

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            WildLogoCloseIcon(),
            Padding(
              padding: const EdgeInsets.only(top: kPadding * 3.6),
              child: Text(
                "WHAT I LIKE TO DO",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: kbackgroundcolor),
              ),
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        left: kPadding * 3, top: kPadding * 14)),
                Text(
                  "Hello Scott,",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: kScott),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding * 3),
              child: Container(
                height: 420,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _allMenu.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: kPadding * 1.5),
                            child: InkWell(
                              onTap: () {
                                late forMenu selectedType =
                                    _allMenu[index].formenu;
                                switch (index) {
                                  case 0:
                                    print("new");
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
                                    break;
                                  case 3:
                                    break;
                                  case 4:
                                    break;
                                  default:
                                }
                                /*switch (selectedType) {
                                  case forMenu.newInstant:
                                    print("new");
                                    break;
                                  case forMenu.profile:
                                    break;
                                  case forMenu.favourite:
                                    break;
                                  case forMenu.connection:
                                    break;
                                  case forMenu.support:
                                    break;
                                  default:
                                }*/
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    _allMenu[index].image,
                                  ),
                                  SizedBox(
                                    width: kPadding * 3,
                                  ),
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
            ),
            Spacer(),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kPadding * 2.7, vertical: kPadding * 2),
              child: Row(
                children: [
                  Text(
                    "Sign out",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WildLogoCloseIcon extends StatelessWidget {
  // const WildLogoCloseIcon({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 2,
        ),
        SvgPicture.asset("assets/image/wild_Icon.svg"),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset("assets/image/close_Icon.svg"),
          ),
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
        image: "assets/image/new.png",
        name: "AI Instan",
        formenu: forMenu.ai_instat));
    listOfAllMenu.add(new Menu(
        image: "assets/image/profile.png",
        name: "Profile",
        formenu: forMenu.profile));
    listOfAllMenu.add(new Menu(
        image: "assets/image/daimond.png",
        name: "Favorites",
        formenu: forMenu.favourite));
    listOfAllMenu.add(new Menu(
        image: "assets/image/connection.png",
        name: "Connections",
        formenu: forMenu.connection));
    listOfAllMenu.add(new Menu(
        image: "assets/image/setting.png",
        name: "Support",
        formenu: forMenu.support));

    return listOfAllMenu;
  }
}
