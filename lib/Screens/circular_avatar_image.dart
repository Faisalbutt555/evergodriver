import 'package:flutter/material.dart';

class CircularAvatarImage extends StatelessWidget {
  const CircularAvatarImage({
    Key? key,
    required this.imgName,
    required this.avatarRadius,
    required this.borderWidth,
    required this.borderColor,
  }) : super(key: key);

  final String imgName;
  final double avatarRadius;
  final double borderWidth;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: avatarRadius + borderWidth,
      backgroundColor: borderColor,
      child: CircleAvatar(
        radius: avatarRadius,
        backgroundImage: AssetImage("images/$imgName"),
      ),
    );
  }
}
