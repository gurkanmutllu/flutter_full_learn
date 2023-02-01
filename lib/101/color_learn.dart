import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).colorScheme.error,
        child: const Text('data'),
      ),
    );
  }
}

class ColorsItems {
  static const Color gurkan = Color.fromARGB(255, 3, 139, 128);
}
