import 'package:flutter/material.dart';

@immutable
class Pallete {
  const Pallete._();

  //grey shades
  static const Color grey = Color(0xFF8e8e8e);
  static const Color grey1 = Color(0xFFEFEFEF);
  static const Color grey2 = Color(0xFF969696);
  static const Color grey3 = Color(0xFFAFAFAF);
  static const Color grey4 = Color(0xFFB6B2B2);
  static const Color grey5 = Color(0xFFF1F1F1);
  static const Color grey6 = Color(0xFFFAFAFA);
  static const Color grey7 = Color(0xFFDEDEDE);
  static const Color grey8 = Color(0xFF9D9D9D);

  static const Color backGround = Color(0xFFF17575);
  static const Color black = Color(0xFF0D0D0D);
  static const Color blackWhite = Color(0xFFF8F8F8);
  static const Color tagColor = Color(0xFF4C9EEB);

  static MaterialStateProperty<Color?> checkboxActiveColor = MaterialStateProperty.resolveWith<Color>((states) {
    if (!states.contains(MaterialState.selected)) {
      return Pallete.backGround;
    }
    return Pallete.backGround;
  });
}
