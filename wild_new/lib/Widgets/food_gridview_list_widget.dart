import 'package:flutter/material.dart';
import 'package:wild_new/utility/constant.dart';

// ignore: must_be_immutable
class FoodGridViewListWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  var FoodGridView = [
    '🥑',
    '🥐',
    '🥓',
    '🍳',
    '🥗',
    '🍔',
    '🍟',
    '🍝',
    '🍜',
    '🥙',
    '🌮',
    '🌯',
  ];
  FoodGridViewListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Pick all the ones you like…\nIs this making you\nhungry too?",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 26),
              ),
            ],
          ),
          SizedBox(height: kPadding * 4),
          Container(
            height: FoodGridView.length * 120 / 3,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: FoodGridView.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Text(
                    FoodGridView[index],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                );
              },
            ),
          ),
          Spacer(),
          Row(
            children: [
              Text(
                "(You just burned .5 calories training)",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
              )
            ],
          )
        ],
      ),
    );
  }
}


