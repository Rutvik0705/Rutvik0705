import 'package:flutter/material.dart';
import 'constant.dart';

class WildBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Center(
        child: Text(
          'AI RECOMMENDATIONS  |  TRAINEDBY YOU',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      color: kbottomAppBarcolor,
    );
  }
}
