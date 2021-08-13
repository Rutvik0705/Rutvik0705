import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/drarwe.dart';

import 'image_string.dart';

class LogoHeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundcolor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
    return Container(
      color: kbackgroundcolor,
      child: SafeArea(
        child: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            SvgPicture.asset(strWildLogoIcon),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
              child: InkWell(
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
            ),
          ],
        ),
      ),
    );
  }
}

class WildLogoMenueIconWhite extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 2,
        ),
        SvgPicture.asset(strOnlyWildIconWhite),
        SizedBox(
          width: kPadding * 11,
        ),
        Padding(
          padding: const EdgeInsets.only(right: kPadding),
          child: InkWell(
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
        ),
      ],
    );
  }
}

// @override
// State<StatefulWidget> createState() {
//   // TODO: implement createState
//   throw UnimplementedError();
// }
