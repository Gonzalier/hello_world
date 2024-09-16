import 'package:flutter/material.dart';
import 'package:hello_world/facebook_ui/widgets/quick_button.dart';

class QuickAcctions extends StatelessWidget {
  const QuickAcctions({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.topCenter,
          child: Row(
            children: [
              QuickButton(
                color: Color(0xff92BE87),
                iconData: Icons.image,
                label: "Gallery",
              ),
              QuickButton(
                color: Color(0xff76adf5),
                iconData: Icons.people_rounded,
                label: "Tag Friends",
              ),
              QuickButton(
                color: Color(0xfff79986),
                iconData: Icons.videocam,
                label: "live",
              )
            ],
          ),
        ),
      ),
    );
  }
}
