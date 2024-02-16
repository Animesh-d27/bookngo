import 'package:bookngo/configs/app_dimensions.dart';
import 'package:flutter/material.dart';

class MyProfileTextFormField extends StatelessWidget {
  final String hintText;


  const MyProfileTextFormField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration:  InputDecoration(
            isDense: true,
            constraints: const BoxConstraints(maxHeight: 40),
            contentPadding: const EdgeInsets.only(
                top: kTextFormFieldPadding,
                left: kTextFormFieldPadding,
                right: kTextFormFieldPadding),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12)),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12)),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 20, color: Colors.black54)));
  }
}
