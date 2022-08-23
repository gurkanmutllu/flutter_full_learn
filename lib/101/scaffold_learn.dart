import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("aaa"),)),
      body: Text("merhaba"),
      backgroundColor: Colors.deepOrangeAccent,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context) => Container(
          height: 200,
        ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "Gurkan"),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "Mutlu"),
      ]),
    );    
  }
}

