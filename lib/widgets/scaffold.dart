import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        child: Column(children: const [
          Expanded(
              child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(),
            ),
          )),
          Text("jaj2132312a"),
          SizedBox(
            height: 50,
          )
        ]),
      ),
      //resizeToAvoidBottomInset: false,
      drawer: Drawer(),
      onDrawerChanged: (isOpen) {
        print(isOpen);
      },
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          print("hola");
        },
      ),
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        backgroundColor: const Color(0xff01579b),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout))
        ],
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "flluter ",
            ),
            Text(
              " app",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
