import 'package:flutter/material.dart';

class HelpCard extends StatelessWidget {
  const HelpCard({
    Key? key,
    required this.titleText,
    required this.subTitleText,
    required this.iconImgeName,
    this.paddingBottom = 20,
  }) : super(key: key);

  final String titleText;
  final String subTitleText;
  final String iconImgeName;
  final double? paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 20,
      ),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
          top: 15,
          right: 10,
          bottom: paddingBottom!,
        ),
        child: ListTile(
          leading: Image.asset(
            "images/$iconImgeName",
            height: 50,
          ),
          title: Text(titleText),
          subtitle: Text(subTitleText),
        ),
      ),
    );
  }
}
