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
          child: Text(
            'Text Button',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            }),
          ),
        ),
        ElevatedButton(onPressed: null, child: Text('Elevated Button')),
        IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm_sharp)),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.all(20),
            ),
            onPressed: () {},
            child: SizedBox(
              width: 200,
              child: Text('data'),
            )),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.abc_outlined),
            label: Text('data')),
        // InkWell widgeti daha kostümize edilebilir bir buton elde etmemizi sağlar.
        InkWell(onTap: () {}, child: Text('Custom')),
        Container(
          height: 200,
          color: Colors.purpleAccent,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 40, right: 40),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.headline5,
              ),
            )),
      ]),
    );
  }
}
