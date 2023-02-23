
import 'package:flutter/material.dart';

class FilterBoxText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;

  const FilterBoxText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: fontColor,
        fontFamily: 'Lato',
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: TextDecoration.none,
      ),
    );
  }
}
