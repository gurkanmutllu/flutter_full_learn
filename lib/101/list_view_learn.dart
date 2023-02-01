import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.displayLarge,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                const Divider(),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          // ssss
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.displayLarge,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                const Divider(),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const _ListDemo(),
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
