import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text("aaa"),
      )),
      body: const Text("merhaba"),
      backgroundColor: Colors.deepOrangeAccent,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 200,
                ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "Gurkan"),
        const BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "Mutlu"),
      ]),
    );
  }
}
