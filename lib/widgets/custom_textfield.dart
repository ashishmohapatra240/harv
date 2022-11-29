import 'package:flutter/material.dart';
import 'package:harv/constants/global_variables.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            focusColor: GlobalVariables.primaryColor,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: GlobalVariables.primaryColor)),
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: GlobalVariables.primaryColor)),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color.fromRGBO(117, 117, 117, 1),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              borderSide: BorderSide(
                color: GlobalVariables.primaryColor,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              borderSide: BorderSide(
                color: Color.fromRGBO(218, 218, 218, 1),
              ),
            ),
          ),
          validator: (val) {
            if (val == null || val.isEmpty) {
              return 'hintText';
            }
            return null;
          },
          maxLines: maxLines,
        ),
      ],
    );
  }
}
