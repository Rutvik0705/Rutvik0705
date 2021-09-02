import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wild_new/screens/send_code_screen.dart';
import 'package:wild_new/Widgets/bottom_AppBar_Widget.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';

class WildLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: kPadding * 3, right: kPadding * 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LogoHeaderScreen(),
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        strWhatILikeDoing,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height / 100 * 4),
                      Text(strLetsGetStarted,
                          style: Theme.of(context).textTheme.headline2),
                      SizedBox(
                          height: MediaQuery.of(context).size.height / 100 * 4),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SendCodeScreen(),
                                ),
                              );
                            },
                            child: SvgPicture.asset(
                              strLogin,
                              color: kColor,
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            strSignup,
                            color: kColor,
                          ),
                          Spacer(flex: 2),
                        ],
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            WildBottomAppBar()
          ],
        ),
      ),
    );
  }
}
