import 'package:flutter/material.dart';

class WeeklyTopTenHeading extends StatelessWidget {
  const WeeklyTopTenHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 18,
            left: 20,
            bottom: 20,
          ),
          child: Text(
            "Weekly's Top 10 Passengers",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
            ),
          ),
        ));
  }
}
