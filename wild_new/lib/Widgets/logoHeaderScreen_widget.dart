import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/screens/drarwe_screen.dart';
import 'package:wild_new/utility/image_string.dart';

class LogoHeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundcolor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // SizedBox(height: kPadding * 3),
            SvgPicture.asset(strWildLogoIcon),
          ],
        ),
      ),
    );
  }
}

class LogoHeaderWithMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          SvgPicture.asset(
            strMenue,
            color: Colors.transparent,
          ),
          Spacer(),
          SvgPicture.asset(strWildLogoIcon),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrawerScreen(),
                ),
              );
            },
            child: SvgPicture.asset(strMenue),
          ),
        ],
      ),
    );
  }
}

class WildLogoMenueIconWhite extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kPadding, right: kPadding),
      child: Row(
        children: [
          Container(
            child: SvgPicture.asset(strMenue, color: Colors.transparent),
          ),
          Spacer(),
          SvgPicture.asset(strOnlyWildIconWhite),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrawerScreen(),
                ),
              );
            },
            child: SvgPicture.asset(
              strMenue,
              color: kColor,
            ),
          ),
        ],
      ),
    );
  }
}


