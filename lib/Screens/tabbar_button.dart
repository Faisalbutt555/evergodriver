import 'package:flutter/material.dart';

class TabBarButton extends StatelessWidget {
  const TabBarButton({
    Key? key,
    required this.buttonTitleText,
    required this.onTap,
  }) : super(key: key);

  final String buttonTitleText;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Text(
          buttonTitleText,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
