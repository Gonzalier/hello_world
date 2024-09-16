import 'package:flutter/material.dart';
import '../icons/customs_icons.dart';

class MyIcons extends StatelessWidget {
  const MyIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          CustomIcons.like,
        ),
      ),
    );
  }
}
