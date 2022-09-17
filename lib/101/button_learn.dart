import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            }),
          ),
          child: Text(
            'Text Button',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const ElevatedButton(onPressed: null, child: Text('Elevated Button')),
        IconButton(onPressed: () {}, icon: const Icon(Icons.accessibility_new)),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.all(20),
            ),
            onPressed: () {},
            child: const SizedBox(
              width: 200,
              child: Text('data'),
            )),
        OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.adb_outlined), label: const Text('data')),
        // InkWell widgeti daha kostümize edilebilir bir buton elde etmemizi sağlar.
        InkWell(onTap: () {}, child: const Text('Custom')),
        Container(
          height: 200,
          color: Colors.purpleAccent,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.headline5,
              ),
            )),
      ]),
    );
  }
}
