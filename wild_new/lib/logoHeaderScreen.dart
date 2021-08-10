import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wild_new/constant.dart';
import 'package:wild_new/drarwe.dart';

class LogoHeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundcolor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset('assets/image/wild_logo.svg'),
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
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Icon(Icons.menu, color: Colors.transparent),
            Spacer(
              flex: 3,
            ),
            SvgPicture.asset('assets/image/wild_logo.svg'),
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
                child: SvgPicture.asset("assets/image/menue.svg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
