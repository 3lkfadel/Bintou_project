import 'package:flutter/material.dart';


class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radius;
  final VoidCallback press;

  const TwoSideRoundedButton({
    Key? key,
    required this.text,
    this.radius = 29,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: const Text(
          "Read",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}





 
