import 'package:flutter/material.dart';

import '../contants.dart';

class TextForm extends StatelessWidget {
  final String hightText;
  const TextForm({
    Key? key,
    required this.hightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: kXamColor),
      decoration: InputDecoration(
          filled: true,
          fillColor: kGrayColor,
          hoverColor: kGrayColor,
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: kGrayColor),
            borderRadius: BorderRadius.circular(15),
          ),
          border: const OutlineInputBorder(),
          hintText: hightText,
          hintStyle: const TextStyle(color: kXamColor)),
    );
  }
}
