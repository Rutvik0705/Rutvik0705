import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RattingfoodWidget extends StatefulWidget {
  const RattingfoodWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RattingfoodWidget> createState() => RattingfoodWidgetState();
}

class RattingfoodWidgetState extends State<RattingfoodWidget> {
  var foodRetting = ['😔', '👎🏻', '👍🏻', '🎉'];
  int selectRetting = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: foodRetting.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectRetting = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: selectRetting == index
                        ? Color(0xBF83A09B)
                        : Colors.transparent),
                child: Center(
                  child: Text(
                    foodRetting[index],
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
