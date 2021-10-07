import 'package:evergo/Screens/circular_avatar_image.dart';
import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';

class UserAvatarwithName extends StatelessWidget {
  const UserAvatarwithName({
    Key? key,
    required this.name,
    required this.img,
  }) : super(key: key);

  final String name;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularAvatarImage(
          imgName: img,
          avatarRadius: 30,
          borderWidth: 5,
          borderColor: kPrimaryLightColor,
        ),
        const SizedBox(height: 3),
        SizedBox(
          width: 100,
          child: Center(
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
