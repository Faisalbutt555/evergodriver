import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: AppBar(
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
            'Languages',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        body: Column(
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    select = 0;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 0.3))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'English',
                        style: TextStyle(
                            color:
                                select == 0 ? kPrimaryDarkColor : Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.check,
                          color: select == 0
                              ? kPrimaryDarkColor
                              : Colors.transparent)
                    ],
                  ),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    select = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 0.3))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Urdu',
                        style: TextStyle(
                            color:
                                select == 1 ? kPrimaryDarkColor : Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.check,
                          color: select == 1
                              ? kPrimaryDarkColor
                              : Colors.transparent)
                    ],
                  ),
                ))
          ],
        ));
  }
}
