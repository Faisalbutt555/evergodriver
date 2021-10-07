import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';

import 'components/help_card.dart';
import 'components/help_header.dart';

class HelpCenterView extends StatelessWidget {
  const HelpCenterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(13),
          ),
        ),
        bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryDarkColor,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'How can we help ?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            preferredSize: const Size.fromHeight(30)),
        elevation: 2,
        backgroundColor: kPrimaryDarkColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left_outlined,
              color: Colors.white,
            )),
        centerTitle: true,
        title: const Text(
          'Help Center',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const HelpCard(
              titleText: "Message Center",
              subTitleText:
                  "Send/Recieve messages to/from Customer Service and View your messages",
              iconImgeName: 'message-center-icon.png',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const HelpCard(
              titleText: "Call Us",
              subTitleText: "We are here to help",
              iconImgeName: 'callus-icon.png',
              paddingBottom: 40,
            ),
          ],
        ),
      ),
    );
  }
}
