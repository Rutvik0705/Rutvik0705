import 'package:flutter/material.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/screens/list_detail_screen.dart';
import 'package:wild_new/utility/constant.dart';

// ignore: must_be_immutable
class ReviewBarScreen extends StatefulWidget {
  @override
  ReviewBarScreenState createState() => ReviewBarScreenState();

  // ignore: non_constant_identifier_names
  var all_page = [
    ReviewByEmojiPageView(),
    // ReviewByNumberWidget(),
  ];
}

class ReviewBarScreenState extends State<ReviewBarScreen> {
  final PageController controller = PageController();
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
            Row(
              children: [
                DrinksLogoImageWidget(),
                SizedBox(
                  width: kPadding * 3,
                ),
                Text(
                  "Durkins\nLiquor Bar",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 26),
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
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: controller,
                itemCount: widget.all_page.length,
                itemBuilder: (context, index) {
                  return widget.all_page[index];
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class ReviewByEmojiPageView extends StatelessWidget {
  const ReviewByEmojiPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              "What did you think?",
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 23),
            ),
          ],
        ),
        SizedBox(
          height: kPadding * 8,
        ),
        Stack(
          children: [
            Container(
              color: kbackgroundcolor,
              height: 350,
              width: double.infinity,
            ),
            Positioned(
              top: kPadding * 3.5,
              left: kPadding * 3.5,
              child: Container(
                height: 285,
                width: 285,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 44, 44, 1),
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
            ),
            Positioned(
              top: kPadding * 11,
              left: kPadding * 11,
              child: Container(
                height: 136,
                width: 136,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(82, 82, 82, 1),
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
            ),
            Positioned(
              left: kPadding * 8,
              top: kPadding * 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReviewByNumberWidget(),
                    ),
                  );
                },
                child: Text("🔥"),
              ),
            ),
            Positioned(
              right: kPadding * 8,
              top: kPadding * 2,
              child: Text("🤢"),
            ),
            Positioned(
              top: kPadding * 14,
              left: kPadding * 1.5,
              child: Text("👍🏻"),
            ),
            Positioned(
              top: kPadding * 14,
              right: kPadding * 1.5,
              child: Text("👎🏻"),
            ),
            Positioned(
              bottom: kPadding * 3.5,
              right: kPadding * 7,
              child: Text("😕"),
            ),
            Positioned(
              bottom: kPadding * 3,
              left: kPadding * 8,
              child: Text("🙂"),
            ),
          ],
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class ReviewByNumberWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  var NumberRatting = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // WildLogoMenueIconWhite(),
            Text(
              "For you more analytical\nfolks out there....",
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 23),
            ),
            SizedBox(height: kPadding * 8.3),
            Text(
              "On a scale of 1-10:",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: kPadding * 4.7,
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: kPadding,
                    mainAxisSpacing: kPadding,
                  ),
                  itemCount: NumberRatting.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 70,
                      width: 52,
                      decoration: BoxDecoration(
                        border: Border.all(color: kColor, width: 1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          NumberRatting[index],
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
