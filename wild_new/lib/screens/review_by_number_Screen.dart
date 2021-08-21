import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/screens/review_bar_Screen.dart';
import 'package:wild_new/utility/constant.dart';

import 'tell_about_foodpage_view_screen.dart';

class ReviewByNumberScreen extends StatefulWidget {
  @override
  State<ReviewByNumberScreen> createState() => _ReviewByNumberScreenState();
}

class _ReviewByNumberScreenState extends State<ReviewByNumberScreen> {
  var commentReview = [
    ReviewByMumberWidget(),
    CommentedReviewPage(),
  ];

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
          child: Column(
            children: [
              WildLogoMenueIconWhite(),
              SizedBox(height: kPadding * 3),
              Flexible(
                child: PageView.builder(
                  scrollDirection: Axis.vertical,
                  controller: controller,
                  itemCount: commentReview.length,
                  itemBuilder: (context, index) {
                    return commentReview[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewByMumberWidget extends StatefulWidget {
  ReviewByMumberWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ReviewByMumberWidget> createState() => _ReviewByMumberWidgetState();
}

class _ReviewByMumberWidgetState extends State<ReviewByMumberWidget> {
  int cheakIndex = 0;

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
    return Column(
      children: [
        BarRattingImageNameWidget(),
        Text(
          "For you more analytical\nfolks out there....",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 23),
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
        Container(
          height: 150,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: kPadding,
              mainAxisSpacing: kPadding,
            ),
            itemCount: NumberRatting.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    cheakIndex = index;
                  });
                },
                child: Container(
                  height: 70,
                  width: 52,
                  decoration: BoxDecoration(
                    color:
                        cheakIndex == index ? kTextColor : Colors.transparent,
                    border: Border.all(
                        color:
                            cheakIndex == index ? Colors.transparent : kColor,
                        width: 1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      NumberRatting[index],
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color:
                                cheakIndex == index ? kbackgroundcolor : kColor,
                          ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CommentedReviewPage extends StatefulWidget {
  @override
  CommentedReviewPageState createState() => CommentedReviewPageState();
}

class CommentedReviewPageState extends State<CommentedReviewPage> {
  var EmojiArray = ['😔', '👎🏻', '👍🏻', '🎉'];

  int colorindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: kPadding * 2),
        Text(
          "What did you like?",
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 23),
        ),
        SizedBox(height: kPadding * 3),
        Row(
          children: [
            Container(
              height: 49,
              width: 163,
              child: Center(
                child: Text(
                  "Awesome Food",
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 14),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: kColor),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Spacer(),
            Container(
              height: 49,
              width: 163,
              child: Center(
                child: Text(
                  "Great Selection",
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 14),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: kColor),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
        SizedBox(
          height: kPadding * 1.4,
        ),
        Row(
          children: [
            Container(
              height: 49,
              width: 163,
              child: Center(
                child: Text(
                  "Friendly Staff",
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 14),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: kColor),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Spacer(),
            Container(
              height: 49,
              width: 163,
              child: Center(
                child: Text(
                  "Great Cocktails",
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 14),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: kColor),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
        SizedBox(
          height: kPadding * 1.4,
        ),
        Container(
          height: 52,
          width: 220,
          child: Center(
            child: Text(
              "Loved the Ambience",
              style:
                  Theme.of(context).textTheme.overline!.copyWith(fontSize: 14),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: kColor),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        SizedBox(height: kPadding * 5.2),
        Text(
          "Recommend to a friend?",
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 23),
        ),
        SizedBox(height: kPadding * 3),
        Container(
          height: kPadding * 9,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: kPadding),
            itemCount: EmojiArray.length,
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    colorindex = index;
                  });
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color:
                        colorindex == index ? kTextColor : Colors.transparent,
                    border: Border.all(
                      color: colorindex == index ? Colors.transparent : kColor,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      EmojiArray[index],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: kPadding * 5.6),
        TextField(
          keyboardType: TextInputType.multiline,
          minLines: 5,
          maxLines: 5,
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: kdarkcolor,
            filled: true,
            hintText: "Leave a comment?",
            hintStyle:
                Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 16)
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {
            print("Ritvik");
          },
          child:
              SvgPicture.asset("assets/image/Right_side_Full_fill_image.svg"),
        ),
      ],
    );
  }
}
