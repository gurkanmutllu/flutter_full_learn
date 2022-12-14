import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                onTap: () {},
                title: const RandomImage(),
                // paddingleri silmek için - sıkıştırmayı sağlar
                // dense: true,
                contentPadding: EdgeInsets.zero,
                subtitle: const Text('how do you use your card'),
                leading: Container(
                    height: 100,
                    width: 30,
                    alignment: Alignment.bottomCenter,
                    // color: Colors.amber,
                    child: const Icon(Icons.money)),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
          )
        ],
      ),
    );
  }
}
