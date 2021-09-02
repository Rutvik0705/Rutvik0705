import 'package:flutter/material.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/utility/image_string.dart';
import 'cheers_Screen.dart';

class FavouriteBarScreen extends StatefulWidget {
  @override
  FavouriteBarScreenState createState() => FavouriteBarScreenState();
}

class FavouriteBarScreenState extends State<FavouriteBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kPadding * 2.7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WildLogoMenueIconWhite(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100 * 5,
              ),
              Row(
                children: [
                  Text(
                    "Favorites",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      strLikeIcon,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100 * 3,
              ),
              Divider(color: kColor),
              SizedBox(
                height: MediaQuery.of(context).size.height / 100 * 2,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, child) {
                    return DrinkListWidget(isFavourite: true);
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
