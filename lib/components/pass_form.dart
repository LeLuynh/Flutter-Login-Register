import 'package:flutter/material.dart';

import '../contants.dart';

class PassFrom extends StatelessWidget {
  final String hintText;
  const PassFrom({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: kXamColor),
      obscureText: true,
      obscuringCharacter: "*",
      decoration: InputDecoration(
          filled: true,
          fillColor: kGrayColor,
          hoverColor: kGrayColor,
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: kGrayColor),
            borderRadius: BorderRadius.circular(15),
          ),
          border: const OutlineInputBorder(),
          hintText: hintText,
          hintStyle: const TextStyle(color: kXamColor)),
    );
  }
}
