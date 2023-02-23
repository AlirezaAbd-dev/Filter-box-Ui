import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:filterboxui/components/components.dart';

class FilterBoxTextField extends StatelessWidget {
  final TextEditingController controller;

  const FilterBoxTextField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: FilterBoxColors.boxBorder,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Lato',
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 8.0),
        hintText: 'Eg. London',
        hintStyle: const TextStyle(
          color: FilterBoxColors.boxBorder,
          fontFamily: 'Lato',
          fontSize: 18.0,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
        ),
        prefixIcon: const HeroIcon(
          HeroIcons.mapPin,
          color: FilterBoxColors.boxBorder,
          size: 25.0,
          style: HeroIconStyle.outline,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: FilterBoxColors.boxBorder,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: FilterBoxColors.boxBorder,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: FilterBoxColors.boxBorder,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
