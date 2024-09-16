import 'package:flutter/material.dart';
import 'package:hello_world/facebook_ui/widgets/circle_button.dart';

class QuickButton extends StatelessWidget {
  const QuickButton({
    super.key,
    required this.iconData,
    required this.color,
    required this.label,
  });
  final IconData iconData;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.only(
          right: 25,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color.withOpacity(0.3),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleButton(
              color: Colors.white,
              iconData: iconData,
              BoxDecorationColor: color,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: TextStyle(
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
