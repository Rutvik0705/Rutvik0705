import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/screens/bar_review_Screen.dart';
import 'package:wild_new/screens/tell_about_foodpage_view_screen.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/utility/text_string.dart';

class ReviewByNumberScreen extends StatefulWidget {
  @override
  State<ReviewByNumberScreen> createState() => _ReviewByNumberScreenState();
}

class _ReviewByNumberScreenState extends State<ReviewByNumberScreen> {
  int onpageChange = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onpageChange(int index) {
    setState(() {
      onpageChange = index;
    });
  }

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
          padding: EdgeInsets.symmetric(horizontal: kPadding * 2),
          child: Stack(
            children: [
              Column(
                children: [
                  WildLogoMenueIconWhite(),
                  SizedBox(height: kPadding * 3),
                  Flexible(
                    child: PageView.builder(
                      onPageChanged: _onpageChange,
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
              VerticalPageViewWigdet(onpageChange: onpageChange, totalPages: 2)
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
          strForMoreAnalyticalFolks,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 23),
        ),
        SizedBox(height: kPadding * 8.3),
        Text(
          strOnScale,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: 17, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: kPadding * 4.7,
        ),
        Padding(
          padding: EdgeInsets.only(right: kPadding * 2, left: kPadding * 2),
          child: Container(
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
                            color: cheakIndex == index
                                ? kbackgroundcolor
                                : kWhiteColor),
                      ),
                    ),
                  ),
                );
              },
            ),
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
  var emojiArray = ['😔', '👎🏻', '👍🏻', '🎉'];

  int colorindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          strWhatDidLike,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 23),
        ),
        Spacer(),
        Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 100 * 6,
              width: MediaQuery.of(context).size.width / 100 * 42,
              child: Center(
                child: Text(
                  strAwesomefood,
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 14, color: kWhiteColor),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: kColor),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height / 100 * 6,
              width: MediaQuery.of(context).size.width / 100 * 42,
              child: Center(
                child: Text(
                  strGreatSelection,
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 14, color: kWhiteColor),
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
              height: MediaQuery.of(context).size.height / 100 * 6,
              width: MediaQuery.of(context).size.width / 100 * 42,
              child: Center(
                child: Text(
                  strFriendlyStaff,
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 14, color: kWhiteColor),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: kColor),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height / 100 * 6,
              width: MediaQuery.of(context).size.width / 100 * 42,
              child: Center(
                child: Text(
                  strGreatCocktails,
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 14, color: kWhiteColor),
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
          height: MediaQuery.of(context).size.height / 100 * 6,
          width: MediaQuery.of(context).size.width / 100 * 50,
          child: Center(
            child: Text(
              strLovedAmbience,
              style: Theme.of(context)
                  .textTheme
                  .overline!
                  .copyWith(fontSize: 14, color: kWhiteColor),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: kColor),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Spacer(flex: 2),
        Text(
          strRecommendFriend,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 23),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: kPadding * 2, left: kPadding * 2),
          child: Container(
            height: kPadding * 9,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, crossAxisSpacing: kPadding * 2),
              itemCount: emojiArray.length,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      colorindex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          colorindex == index ? kTextColor : Colors.transparent,
                      border: Border.all(
                        color:
                            colorindex == index ? Colors.transparent : kColor,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        emojiArray[index],
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Spacer(flex: 2),
        TextField(
          keyboardType: TextInputType.multiline,
          minLines: 5,
          maxLines: 5,
          decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: kdarkcolor,
              filled: true,
              hintText: strLeaveComment,
              hintStyle: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(fontSize: 16)),
        ),
        Spacer(flex: 2),
        InkWell(
          onTap: () {
            // print("Ritvik");
          },
          child:
              SvgPicture.asset("assets/image/Right_side_Full_fill_image.svg"),
        ),
      ],
    );
  }
}
