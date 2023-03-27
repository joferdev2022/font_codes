import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon,
    IconData? sufixIcon,
  }) {
    return InputDecoration(
      border: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffF0F0F0),
        ),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffF0F0F0),
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffE60A0F),
          width: 2,
        ),
      ),
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(
        color: Colors.grey,
      ),
      prefixIcon: prefixIcon != null
          ? Icon(
              prefixIcon,
              color: Color(0xff707070),
            )
          : null,
      suffixIcon: sufixIcon != null
          ? Icon(
              sufixIcon,
              color: Color(0xff707070),
            )
          : null,
    );
  }
}
