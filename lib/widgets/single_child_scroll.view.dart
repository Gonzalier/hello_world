import 'package:flutter/material.dart';

class MySingleChildView extends StatelessWidget {
  const MySingleChildView({super.key});

  @override
  Widget build(BuildContext context) {
    final containers = List.generate(
        18,
        (index) => Container(
              child: Text("$index"),
              height: 100,
              width: 100,
              color: Colors.primaries[index],
              alignment: Alignment.center,
            ));
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Column(
        children: [
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                child: Row(children: containers),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(),
                    ),
                    ...containers
                  ]),
            ),
          )
        ],
      ),
    ));
  }
}
