import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PayoutScreen extends StatefulWidget {
  const PayoutScreen({Key? key}) : super(key: key);
  @override
  _PayoutScreenState createState() => _PayoutScreenState();
}

class _PayoutScreenState extends State<PayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                // height: MediaQuery.of(context).size.height * .25,
                width: MediaQuery.of(context).size.width,
                color: kPrimaryDarkColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: CircleAvatar(
                              maxRadius: 10,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.keyboard_arrow_left_outlined,
                                size: 18,
                                color: kPrimaryDarkColor,
                              ),
                            ),
                          ),
                          const Text(
                            "Payout Settlement",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          const Icon(
                            Icons.notification_add,
                            size: 18,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            maxRadius: 30,
                            backgroundImage:
                                AssetImage('images/chat-top-img.png'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Amara Faniter",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 05,
                              ),
                              Text(
                                "Rickshaw Driver",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                ' Driver Level 2',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Column(children: [
                      Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: kPrimaryLightColor,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)))),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            border: const Border(
                                bottom:
                                    BorderSide(color: Colors.black, width: 1))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Earnings: Us\$ 777.50',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400)),
                            Row(
                              children: const [
                                Text('Today',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                  size: 17,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ])
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 300,
                margin: const EdgeInsets.only(top: 170),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "This Month's Cash",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("US\$ 123.21",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 21,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'images/end-destination-icon.png',
                              color: Colors.red,
                              scale: 4,
                            ),
                            const Text("14,345 Destination",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.monetization_on,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Text("14,345 coins",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 300),
            child: ListView(children: [
              Slidable(
                actionPane: const SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom:
                              BorderSide(color: kPrimaryLightColor, width: 9))),
                  child: ListTile(
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'US \$ 229.99',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '1.3 Km',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 1)),
                      child: const Center(
                        child: Text(
                          '\$',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                    title: const Text(
                      'july, 2021',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text(
                      'from 17/7/2021 - 31/7/2021',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                actions: const <Widget>[
                  IconSlideAction(
                    caption: 'Archive',
                    color: kPrimaryLightColor,
                    icon: Icons.archive,
                    //onTap: () => _showSnackBar('Archive'),
                  ),
                  IconSlideAction(
                    caption: 'Share',
                    color: kPrimaryDarkColor,
                    icon: Icons.share,
                    //	onTap: () => _showSnackBar('Share'),
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'More',
                    color: Colors.black45,
                    icon: Icons.more_horiz,
                    //	onTap: () => _showSnackBar('More'),
                  ),
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    //onTap: () => _showSnackBar('Delete'),
                  ),
                ],
              ),
              Slidable(
                actionPane: const SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom:
                              BorderSide(color: kPrimaryLightColor, width: 9))),
                  child: ListTile(
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'US \$ 229.99',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '1.3 Km',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 1)),
                      child: const Center(
                        child: Text(
                          '\$',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                    title: const Text(
                      'july, 2021',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text(
                      'from 17/7/2021 - 31/7/2021',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                actions: const <Widget>[
                  IconSlideAction(
                    caption: 'Archive',
                    color: kPrimaryLightColor,
                    icon: Icons.archive,
                    //onTap: () => _showSnackBar('Archive'),
                  ),
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.indigo,
                    icon: Icons.share,
                    //	onTap: () => _showSnackBar('Share'),
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'More',
                    color: Colors.black45,
                    icon: Icons.more_horiz,
                    //	onTap: () => _showSnackBar('More'),
                  ),
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    //onTap: () => _showSnackBar('Delete'),
                  ),
                ],
              ),
              Slidable(
                actionPane: const SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom:
                              BorderSide(color: kPrimaryLightColor, width: 9))),
                  child: ListTile(
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'US \$ 229.99',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '1.3 Km',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 1)),
                      child: const Center(
                        child: Text(
                          '\$',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                    title: const Text(
                      'july, 2021',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text(
                      'from 17/7/2021 - 31/7/2021',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                actions: const <Widget>[
                  IconSlideAction(
                    caption: 'Archive',
                    color: kPrimaryLightColor,
                    icon: Icons.archive,
                    //onTap: () => _showSnackBar('Archive'),
                  ),
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.indigo,
                    icon: Icons.share,
                    //	onTap: () => _showSnackBar('Share'),
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'More',
                    color: Colors.black45,
                    icon: Icons.more_horiz,
                    //	onTap: () => _showSnackBar('More'),
                  ),
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    //onTap: () => _showSnackBar('Delete'),
                  ),
                ],
              ),
              Slidable(
                actionPane: const SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom:
                              BorderSide(color: kPrimaryLightColor, width: 9))),
                  child: ListTile(
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'US \$ 229.99',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '1.3 Km',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 1)),
                      child: const Center(
                        child: Text(
                          '\$',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                    title: const Text(
                      'july, 2021',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text(
                      'from 17/7/2021 - 31/7/2021',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                actions: const <Widget>[
                  IconSlideAction(
                    caption: 'Archive',
                    color: kPrimaryLightColor,
                    icon: Icons.archive,
                    //onTap: () => _showSnackBar('Archive'),
                  ),
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.indigo,
                    icon: Icons.share,
                    //	onTap: () => _showSnackBar('Share'),
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'More',
                    color: Colors.black45,
                    icon: Icons.more_horiz,
                    //	onTap: () => _showSnackBar('More'),
                  ),
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    //onTap: () => _showSnackBar('Delete'),
                  ),
                ],
              ),
              Slidable(
                actionPane: const SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom:
                              BorderSide(color: kPrimaryLightColor, width: 9))),
                  child: ListTile(
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'US \$ 229.99',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '1.3 Km',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 1)),
                      child: const Center(
                        child: Text(
                          '\$',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                    title: const Text(
                      'july, 2021',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text(
                      'from 17/7/2021 - 31/7/2021',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                actions: const <Widget>[
                  IconSlideAction(
                    caption: 'Archive',
                    color: kPrimaryLightColor,
                    icon: Icons.archive,
                    //onTap: () => _showSnackBar('Archive'),
                  ),
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.indigo,
                    icon: Icons.share,
                    //	onTap: () => _showSnackBar('Share'),
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'More',
                    color: Colors.black45,
                    icon: Icons.more_horiz,
                    //	onTap: () => _showSnackBar('More'),
                  ),
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    //onTap: () => _showSnackBar('Delete'),
                  ),
                ],
              ),
              Slidable(
                actionPane: const SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom:
                              BorderSide(color: kPrimaryLightColor, width: 9))),
                  child: ListTile(
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'US \$ 229.99',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '1.3 Km',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 1)),
                      child: const Center(
                        child: Text(
                          '\$',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                    title: const Text(
                      'july, 2021',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text(
                      'from 17/7/2021 - 31/7/2021',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                actions: const <Widget>[
                  IconSlideAction(
                    caption: 'Archive',
                    color: kPrimaryLightColor,
                    icon: Icons.archive,
                    //onTap: () => _showSnackBar('Archive'),
                  ),
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.indigo,
                    icon: Icons.share,
                    //	onTap: () => _showSnackBar('Share'),
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'More',
                    color: Colors.black45,
                    icon: Icons.more_horiz,
                    //	onTap: () => _showSnackBar('More'),
                  ),
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    //onTap: () => _showSnackBar('Delete'),
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
