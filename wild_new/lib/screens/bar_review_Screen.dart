import 'package:flutter/material.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/screens/list_detail_screen.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/utility/text_string.dart';
import 'review_by_number_Screen.dart';

class ReviewBarScreen extends StatefulWidget {
  @override
  ReviewBarScreenState createState() => ReviewBarScreenState();
}

class ReviewBarScreenState extends State<ReviewBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding * 3),
          child: Column(
            children: [
              WildLogoMenueIconWhite(),
              SizedBox(
                height: kPadding * 3,
              ),
              BarRattingImageNameWidget(),
              Text(
                strWhatDidYouThink,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 23),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 100 * 8),
              Stack(
                children: [
                  Container(
                    // color: kColor,
                    height: MediaQuery.of(context).size.height / 100 * 40,
                    width: MediaQuery.of(context).size.height / 100 * 39,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 4,
                    left: MediaQuery.of(context).size.height / 100 * 3.5,
                    right: MediaQuery.of(context).size.height / 100 * 3.5,
                    bottom: MediaQuery.of(context).size.height / 100 * 4,
                    child: Container(
                      // height: MediaQuery.of(context).size.height / 100 * 32,
                      // width: MediaQuery.of(context).size.height / 100 * 32,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(44, 44, 44, 1),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 12.5,
                    left: MediaQuery.of(context).size.height / 100 * 12,
                    right: MediaQuery.of(context).size.height / 100 * 12,
                    bottom: MediaQuery.of(context).size.height / 100 * 12.5,
                    child: Container(
                      // height: MediaQuery.of(context).size.height / 100 * 12,
                      // width: MediaQuery.of(context).size.height / 100 * 12,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(82, 82, 82, 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 2.5,
                    left: MediaQuery.of(context).size.height / 100 * 8,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReviewByNumberScreen(),
                          ),
                        );
                      },
                      child: Text("🔥"),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 2.5,
                    right: MediaQuery.of(context).size.height / 100 * 9,
                    child: Text("🤢"),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 16.5,
                    left: MediaQuery.of(context).size.height / 100 + 1,
                    child: Text("👍🏻"),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 100 * 16.5,
                    right: MediaQuery.of(context).size.height / 100 + 1,
                    child: Text("👎🏻"),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height / 100 * 3,
                    right: MediaQuery.of(context).size.height / 100 * 8,
                    child: Text("😕"),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height / 100 * 3,
                    left: MediaQuery.of(context).size.height / 100 * 8,
                    child: Text("🙂"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BarRattingImageNameWidget extends StatelessWidget {
  const BarRattingImageNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DrinksLogoImageWidget(),
            SizedBox(
              width: kPadding * 3,
            ),
            Text(
              strDurkinsBarName,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 26),
            )
          ],
        ),
        SizedBox(
          height: kPadding * 2,
        ),
        Divider(
          color: kColor,
        ),
        SizedBox(
          height: kPadding * 5.8,
        ),
      ],
    );
  }
}
