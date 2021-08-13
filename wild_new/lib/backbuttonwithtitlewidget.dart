import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/constant.dart';
import 'image_string.dart';


class BackbuttonWithTitleWidget extends StatelessWidget {
  const BackbuttonWithTitleWidget({
    Key? key,
    required this.navigationTitle,
    required this.onClickBack,
  }) : super(key: key);

  final String navigationTitle;
  final Function onClickBack;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            onClickBack();
          },
          child: Container(
            height: 50,
            width: 15,
            margin: EdgeInsets.only(right: kPadding*3),
            child: Container(
              child: SvgPicture.asset(
                strBackArrow,
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          child: Center(
            child: Text(navigationTitle,
                style: Theme.of(context).textTheme.headline2),
          ),
        ),
      ],
    );
  }
}
