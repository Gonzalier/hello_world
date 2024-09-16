import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final Color BoxDecorationColor;
  final bool showBadge;

  const CircleButton(
      {super.key,
      required this.color,
      required this.iconData,
      required this.BoxDecorationColor,
      this.showBadge = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
                color: BoxDecorationColor, shape: BoxShape.circle),
            child: Icon(
              iconData,
              color: color,
              size: 26,
            ),
          ),
          if (showBadge)
            Positioned(
                top: -3,
                right: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      border: Border.all(width: 3, color: Colors.white)),
                ))
        ],
      ),
    );
  }
}
