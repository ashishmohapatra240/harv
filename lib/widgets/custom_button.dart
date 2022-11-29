import 'package:flutter/material.dart';
import 'package:harv/constants/global_variables.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  const CustomButton(
      {Key? key, required this.text, required this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: GlobalVariables.primaryColor,
            minimumSize: const Size(double.infinity, 50),
          ),
          child: Text(
            text,
            style:
                TextStyle(color: color == null ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
