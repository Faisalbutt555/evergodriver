import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';

class HelpHeader extends StatelessWidget {
  const HelpHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(
        //border: Border.all(width: 1, color: kPrimaryColor),
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: const Center(
        child: Text("How can wen help?", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
