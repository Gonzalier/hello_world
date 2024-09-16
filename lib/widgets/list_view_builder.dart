import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final names = ["gonzalo", "martin", "meza"];
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          itemBuilder: (_, index) {
            final name = names[index];
            print("hola");
            return Container(
              height: 100,
              margin: const EdgeInsets.all(5),
              child: Text("$name"),
              alignment: Alignment.center,
            );
          },
          itemCount: names.length,
          separatorBuilder: (_, index) {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${names[index].length}",
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    color: Colors.black38,
                  ),
                )
              ],
            );
          }),
    );
  }
}
