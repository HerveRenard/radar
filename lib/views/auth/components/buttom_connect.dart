import 'package:flutter/material.dart';
import 'package:radar/utils/constants/color.dart';

class BottomConnect extends StatelessWidget {
  final String title;
  final VoidCallback press;
  final IconData? icon;
  const BottomConnect({
    super.key,
    required this.title,
    // required this.icon,
    required this.press, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 50,
        width: 320,
        // margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: RColor.button,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Icon(icon,
                size: 12,
                color: Colors.white,),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
