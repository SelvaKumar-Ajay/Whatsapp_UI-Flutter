import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  final IconData icons;
  final Color iconColor;
  final Color backgroundColor;
  const FloatButton({
    super.key,
    required this.icons,
    this.iconColor = Colors.white,
    this.backgroundColor = const Color(0xff075e54),
  });
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: backgroundColor,
      child: Icon(
        icons,
        color: iconColor,
      ),
    );
  }
}
