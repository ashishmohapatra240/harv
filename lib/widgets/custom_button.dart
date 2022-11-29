import 'package:flutter/material.dart';

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
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 236, 0, 140),
              Color.fromARGB(255, 252, 103, 103),
            ],
            stops: [0.25, 0.75],
          ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
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
