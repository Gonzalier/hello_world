import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MysafeArea extends StatelessWidget {
  const MysafeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Text("HELLO"),
            Expanded(
                child: Container(
              color: Colors.blue,
              width: double.infinity,
              child: SafeArea(
                bottom: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("test@test.com"), Text("test@test.com")],
                ),
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.red,
            ))
          ],
        ),
      ),
    );
  }
}
