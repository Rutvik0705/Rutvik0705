import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wild_new/screens/send_code_screen.dart';
import 'package:wild_new/Widgets/bottom_AppBar_Widget.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';


class WildLoginWidget extends StatelessWidget {
  const WildLoginWidget({
    Key? key,
    // ignore: non_constant_identifier_names
    required double Padding,
  })  : _Padding = Padding,
        super(key: key);

  // ignore: non_constant_identifier_names
  final double _Padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            ),
            LogoHeaderScreen(),
            Spacer(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kPadding * 2),
                ),
                Text(
                  strWhatILikeDoing,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding * 2.5),
                ),
                Text(strLetsGetStarted,
                    style: Theme.of(context).textTheme.headline2)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SendCodeScreen(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        strLogin,
                        color: kColor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(_Padding * 1.9),
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      strSignup,
                      color: kColor,
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            WildBottomAppBar()
          ],
        ),
      ),
    );
  }
}
