import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wild_new/Widgets/backbuttonwithtitlewidget.dart';
import 'package:wild_new/utility/constant.dart';
import 'package:wild_new/Widgets/logoHeaderScreen_widget.dart';
import 'package:wild_new/utility/image_string.dart';
import 'package:wild_new/utility/text_string.dart';
import 'tell_about_foodpage_view_screen.dart';

class InviteFriendScreen extends StatefulWidget {
  @override
  InviteFriendScreenState createState() => InviteFriendScreenState();
}

class InviteFriendScreenState extends State<InviteFriendScreen> {
  List<Contact> contacts = [];

  @override
  void initState() {
    getAllContacts();
    super.initState();
  }

  getAllContacts() async {
    List<Contact> _contacts =
        (await ContactsService.getContacts(withThumbnails: false)).toList();
    setState(() {
      contacts = _contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPadding * 3),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LogoHeaderWithMenu(),
                SizedBox(height: MediaQuery.of(context).size.height / 100 * 5),
                BackbuttonWithTitleWidget(
                  navigationTitle: '',
                  onClickBack: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  strInviteFriend,
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 100 * 3),
                Text(
                  strDetailsInviteFriend,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: kdarkcolor,
                      ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 100 * 2),
                Text(
                  strDurkinsBar,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 100),
                Text(
                  strDurkinsLiquorBarAddress,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: kColor, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 100 * 3),
                Row(
                  children: [
                    SvgPicture.asset(strDateCalenderIcon),
                    Spacer(),
                    SvgPicture.asset(strClocktime),
                    Spacer(),
                    Text(
                      strEdit,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 100 * 3),
                Text(
                  strSmsInviteFriend,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: kdarkcolor,
                      ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 100),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 100 * 5.5,
                      width: MediaQuery.of(context).size.width - 140,
                      decoration: BoxDecoration(
                          color: kTextFieldColor,
                          borderRadius: BorderRadius.circular(55)),
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutFoodScreen(),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          SvgPicture.asset(strCircleInviteFriend),
                          Positioned(
                            top: kPadding * 1.7,
                            left: kPadding * 1.7,
                            child: SvgPicture.asset(strPluseInviteFriend),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 100 * 5),
                Text(
                  strFromContects,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: kdarkcolor),
                ),
                Divider(
                  color: kColor,
                  height: MediaQuery.of(context).size.height / 100 * 5,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    Contact contact = contacts[index];
                    return ListTile(
                      title: Text(
                        contact.displayName.toString(),
                        style: TextStyle(color: kWhiteColor),
                      ),
                      // subtitle:
                      onTap: () {
                        setState(() {
                          Text(contact.phones!.elementAt(0).value.toString());
                        });
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class FirstLastName extends StatelessWidget {
//   const FirstLastName({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Text(
//               strSirstLastName,
//               style:
//                   Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
//             ),
//             Spacer(),
//             Text(
//               strSent,
//               style: Theme.of(context).textTheme.headline4!.copyWith(
//                     color: kdarkcolor,
//                   ),
//             ),
//             SizedBox(width: MediaQuery.of(context).size.height / 100 * 1.5),
//             SvgPicture.asset(strMessageBoxInviteFriend)
//           ],
//         ),
//         Divider(
//           color: kColor,
//           height: MediaQuery.of(context).size.height / 100 * 5,
//         ),
//       ],
//     );
//   }
// }
