import 'package:flutter/material.dart';
import 'package:filterboxui/components/components.dart';

class FilterBoxBackBox extends StatelessWidget {
  const FilterBoxBackBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      height: 420.0,
      decoration: BoxDecoration(
        color: FilterBoxColors.backBox,
        borderRadius: BorderRadius.circular(25.0),
      ),
    );
  }
}
