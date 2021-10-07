import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Messages',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
      body: Scrollbar(
          child: ListView.builder(
              itemCount: 20,
              padding: const EdgeInsets.all(8),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) => Slidable(
                    actionPane: const SlidableDrawerActionPane(),
                    actionExtentRatio: 0.25,
                    child: GestureDetector(
                      onTap: () {
                        //  AppRoutes.push(context, BuyerChatScreen());
                      },
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 63,
                                    width: 43,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 1),
                                        shape: BoxShape.circle),
                                    child: Container(
                                      margin: const EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: const DecorationImage(
                                            image: AssetImage(
                                              'images/chat-top-img.png',
                                            ),
                                            fit: BoxFit.cover),
                                        border: Border.all(
                                            color: Colors.transparent,
                                            width: 1),
                                      ),
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: index.isEven
                                                ? Color(0xff000064)
                                                : Colors.grey,
                                          ),
                                          height: 10,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 08,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          index == 0
                                              ? 'john Due'
                                              : index == 1
                                                  ? 'Baldwin'
                                                  : index == 2
                                                      ? 'Daniel'
                                                      : index == 3
                                                          ? 'Fabe'
                                                          : index == 4
                                                              ? 'Barrett'
                                                              : index == 5
                                                                  ? 'Aron'
                                                                  : 'Danny',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          index == 0
                                              ? 'Saturday'
                                              : index == 1
                                                  ? '24 Sept'
                                                  : 'Tuesday',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 05,
                                    ),
                                    Text(
                                      " everything about that person becomes beautiful. 39. It's never too late to be what you might have been. 40. Every man has three ... ",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                      thickness: 0.3,
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      IconSlideAction(
                          caption: 'Archive',
                          color: kPrimaryLightColor,
                          icon: Icons.archive,
                          onTap: () {}),
                      IconSlideAction(
                          caption: 'Share',
                          color: Colors.indigo,
                          icon: Icons.share,
                          onTap: () {}),
                    ],
                    secondaryActions: <Widget>[
                      IconSlideAction(
                          caption: 'More',
                          color: Colors.black45,
                          icon: Icons.more_horiz,
                          onTap: () => {}),
                      IconSlideAction(
                          caption: 'Delete',
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () => {}),
                    ],
                  ))),
    );
  }
}
