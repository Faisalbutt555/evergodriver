import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .25,
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
                            "My Profile",
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
                            children: [
                              const Text(
                                "Amara Faniter",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 05,
                              ),
                              const Text(
                                "1,200 Destinations | 200 Coins",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star_outline,
                                    size: 18,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_outline,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.star_outline,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.star_outline,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.star_outline,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 25,
              left: 12,
              right: 12,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            margin: const EdgeInsets.only(top: 190),
            child: ListView(
              children: [
                txtpart('National Card ID (or Passport Number )',
                    '1232323232323', 0),
                const SizedBox(
                  height: 20,
                ),
                txtpart('Sex', 'Female', 1),
                const SizedBox(
                  height: 20,
                ),
                txtpart('Registered since', '12 Dec,2015', 2),
                const SizedBox(
                  height: 20,
                ),
                txtpart('Phone number', '43434345', 3),
                const SizedBox(
                  height: 20,
                ),
                txtpart('Password', '**********', 4),
                const SizedBox(
                  height: 20,
                ),
                txtpart('Birth place', 'Aruna District, Daron Faren City', 5),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Current Adress',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      maxLines: 10,
                      style: TextStyle(
                          color: kPrimaryDarkColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(9),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 0.2),
                        ),
                        hintText: 'Detail your current adress',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Screenshot of National Card ID (or Passport)',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Card(
                    margin: const EdgeInsets.only(top: 20),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.3),
                          borderRadius: BorderRadius.circular(20)),
                      height: 160,
                      width: MediaQuery.of(context).size.width * .7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/clou-uploud-icon.png',
                            height: 35,
                            width: 35,
                          ),
                          const Text(
                            'Click here to upload',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )),
                Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 20, bottom: 40),
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: const Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 140,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                ProfileRotatedBox(
                  child: Text(
                    "14",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                      color: Colors.white,
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

  Widget txtpart(String txt1, String txt2, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txt1,
          style: const TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 18,
          width: MediaQuery.of(context).size.width,
          child: TextFormField(
            style: TextStyle(
                color: kPrimaryDarkColor,
                fontSize: 13,
                fontWeight: FontWeight.w300),
            decoration: InputDecoration(
              suffixIcon: index == 4
                  ? Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 07),
                      child: Icon(
                        Icons.remove_red_eye,
                        color: kPrimaryDarkColor,
                      ),
                    )
                  : const SizedBox(),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              hintText: txt2,
              hintStyle: TextStyle(
                  color: kPrimaryDarkColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    );
  }
}

class ProfileRotatedBox extends StatelessWidget {
  const ProfileRotatedBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(45 / 360),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: RotationTransition(
                  turns: new AlwaysStoppedAnimation(-45 / 360),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
