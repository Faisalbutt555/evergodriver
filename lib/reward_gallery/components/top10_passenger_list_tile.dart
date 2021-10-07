import 'package:evergo/Screens/circular_avatar_image.dart';
import 'package:evergo/config/colors.dart';
import 'package:flutter/material.dart';

class Top10PassengerListTile extends StatelessWidget {
  const Top10PassengerListTile({
    Key? key,
    required this.passengerImgName,
    required this.passengerName,
    required this.passengerPoints,
    required this.rewardImgName,
  }) : super(key: key);

  final String passengerImgName;
  final String passengerName;
  final String passengerPoints;
  final String rewardImgName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[700]!)),
      child: ListTile(
        leading: CircularAvatarImage(
          imgName: passengerImgName,
          avatarRadius: 20,
          borderWidth: 0,
          borderColor: Colors.white,
        ),
        title: Text(
          passengerName,
          style: const TextStyle(color: kPrimaryDarkColor),
        ),
        subtitle: Text(passengerPoints),
        trailing: Image.asset(
          "images/$rewardImgName",
          width: 40,
        ),
      ),
    );
  }
}
