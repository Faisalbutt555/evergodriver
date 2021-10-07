import 'package:evergo/Screens/Authentication/sign_in.dart';
import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                                width: 10, color: Colors.grey.shade300),
                            bottom: BorderSide(
                                width: 10, color: Colors.grey.shade300)),
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
                                child: Text('Forgot Password',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 50),
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
                                      hintText: 'Email Adress',
                                      hintStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.only(
                                            right: 20, bottom: 10),
                                        child: Icon(
                                          Icons.email,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      )),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const SignInScreen()));
                                },
                                child: Container(
                                  height: 40,
                                  margin: const EdgeInsets.only(top: 40),
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.red,
                                  ),
                                  child: const Center(
                                    child: Text('Forgot Password',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            Container(
                              margin: const EdgeInsets.only(left: 212),
                              height: 130,
                              width: 50,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
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
