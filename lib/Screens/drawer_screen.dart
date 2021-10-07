import 'package:evergo/Screens/Authentication/sign_in.dart';
import 'package:evergo/Screens/chat_screen.dart';
import 'package:evergo/Screens/earnings_screen.dart';
import 'package:evergo/Screens/language_Screen.dart';
import 'package:evergo/Screens/notification_screen.dart';
import 'package:evergo/Screens/opl_screen.dart';
import 'package:evergo/Screens/payout_screen.dart';
import 'package:evergo/Screens/profile_screen.dart';
import 'package:evergo/config/colors.dart';
import 'package:evergo/help_center/help_center_view.dart';
import 'package:evergo/reward_gallery/reward_gallery_view.dart';
import 'package:evergo/widgets/alert_dialog.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width,
            color: kPrimaryDarkColor,
            child: UserAccountsDrawerHeader(
              accountName: const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "(Full Name of Driver)",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )),
              accountEmail: Row(
                children: [
                  Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    isSwitched ? "Online" : 'Offline',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              currentAccountPicture: const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              decoration: const BoxDecoration(color: kPrimaryDarkColor),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .8,
            width: MediaQuery.of(context).size.width,
            color: kPrimaryLightColor,
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ProfileScreen()));
                    },
                    child: Row(
                      children: const [
                        SizedBox(width: 08),
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 30),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const Notificationscreen()));
                    },
                    child: Row(
                      children: const [
                        SizedBox(width: 08),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 30),
                        Text(
                          "Notifications",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const OplScreen()));
                    },
                    child: Row(
                      children: const [
                        SizedBox(width: 08),
                        Icon(
                          Icons.assignment,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 30),
                        Text(
                          "OPL",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const ChatList()));
                    },
                    child: Row(
                      children: const [
                        SizedBox(width: 08),
                        Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 30),
                        Text(
                          "Messages",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const MyEarning()));
                  },
                  child: Row(
                    children: [
                      Image.asset('images/earningremove.png',
                          height: 40, width: 40, color: Colors.white),
                      const SizedBox(width: 23),
                      const Text(
                        "Earnings",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 04),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const PayoutScreen()));
                    },
                    child: Row(
                      children: [
                        Image.asset('images/payoutremove.png',
                            height: 40, width: 40, color: Colors.white),
                        const SizedBox(width: 20),
                        const Text(
                          "Payout",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 04),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const RewardGalleryView()));
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 04),
                        Image.asset('images/rewardgalleryremove.png',
                            height: 25, width: 25, color: Colors.white),
                        const SizedBox(width: 30),
                        const Text(
                          "Reward Gallery",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 04),
                  child: Text(
                    "Application Preferences",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 04, top: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const LanguageScreen()));
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 04),
                        Image.asset('images/languagesremove.png',
                            height: 25, width: 25, color: Colors.white),
                        const SizedBox(width: 30),
                        const Text(
                          "Languages",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 04, top: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const HelpCenterView()));
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 04),
                        Image.asset('images/help-icon.png',
                            height: 20, width: 20, color: Colors.white),
                        const SizedBox(width: 35),
                        const Text(
                          "Help Center",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 04, top: 10),
                  child: InkWell(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 04),
                        Image.asset('images/login-icon-drawer.png',
                            height: 20, width: 20, color: Colors.white),
                        const SizedBox(width: 35),
                        const Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
