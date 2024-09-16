import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    child: const Text("GREBB"),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                const Text(
                  "HI",
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
