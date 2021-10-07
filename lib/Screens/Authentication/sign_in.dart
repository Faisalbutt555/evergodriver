import 'package:evergo/Screens/Authentication/sign_up.dart';
import 'package:evergo/Screens/home_scren.dart';
import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';

import 'forgot_password.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryDarkColor,
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipPath(
                    clipper: const ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10)))),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .75,
                      width: MediaQuery.of(context).size.width * .25,
                      decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 6, color: Colors.grey.shade300),
                            bottom: BorderSide(
                                width: 6, color: Colors.grey.shade300)),
                        color: kPrimaryLightColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Image.asset(
                                'images/app-icon.png',
                                scale: 8,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                height: 45,
                                width: 150,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.yellow, width: 0.8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Text('Driver Use Only',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 80, top: 30),
                                child: Text('Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 30),
                                width: 200,
                                height: 21,
                                child: TextFormField(
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                  decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      hintText: 'Phone number',
                                      hintStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.only(
                                            right: 20, bottom: 10),
                                        child: Icon(
                                          Icons.phone_android,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 35),
                                width: 200,
                                height: 21,
                                child: TextFormField(
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                  decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    suffixIcon: Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, bottom: 10),
                                      child: Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(
                                          right: 20, bottom: 10),
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const HomeScreen()));
                                },
                                child: Container(
                                  height: 40,
                                  margin: const EdgeInsets.only(top: 30),
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.red,
                                  ),
                                  child: const Center(
                                    child: Text('Login',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 172,
                        ),
                        Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const ForgotPassword()));
                                    },
                                    child: const Text('I forgot my password.',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          const Text('I dont an account:',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300)),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (_) =>
                                                          const SignUpScreen()));
                                            },
                                            child: const Text(' Rejister.',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 70),
                              height: 130,
                              width: 50,
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(13)),
                                color: kPrimaryLightColor,
                              ),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    CircleAvatar(
                                      maxRadius: 12,
                                      backgroundImage: AssetImage(
                                        'images/flag1.png',
                                      ),
                                    ),
                                    CircleAvatar(
                                      maxRadius: 12,
                                      backgroundImage: AssetImage(
                                        'images/flag2.png',
                                      ),
                                    ),
                                    CircleAvatar(
                                      maxRadius: 12,
                                      backgroundImage: AssetImage(
                                        'images/flag3.png',
                                      ),
                                    )
                                  ]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
