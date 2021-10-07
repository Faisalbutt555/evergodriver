import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';

class RewardPostionBar extends StatelessWidget {
  const RewardPostionBar({
    Key? key,
    required this.barImg,
    required this.position,
    required this.rewardImg,
    required this.postionTextLeft,
    required this.postionTextBottom,
  }) : super(key: key);

  final String barImg;
  final String position;
  final String rewardImg;
  final double postionTextLeft;
  final double postionTextBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 220,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('images/$barImg'),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 30,
            left: 30,
            child: Image.asset(
              "images/$rewardImg",
              width: 40,
            ),
          ),
          Positioned(
            bottom: postionTextBottom,
            left: postionTextLeft,
            child: Text(
              position,
              style: const TextStyle(
                fontFamily: 'Sawarabi Mincho',
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 80,
              ),
            ),
          )
        ],
      ),
    );
  }
}
