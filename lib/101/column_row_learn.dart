import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Column(
        children: [
          // 4+2+2+2
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.white)),
                  Expanded(flex: 6, child: Container(color: Colors.blue)),
                  Expanded(flex: 2, child: Container(color: Colors.pink)),
                  Expanded(flex: 1, child: Container(color: Colors.purple)),
                ],
              )),
          Spacer(flex: 2),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Text('data1'),
                  Text('data2'),
                  Text('data3'),
                ],
              )),
          SizedBox(
            height: ProjectContainerSize.cardHeight,
            child: Column(
              children: [
                Expanded(child: Text('gurkan')),
                Expanded(child: Text('gurkan')),
                Expanded(child: Text('gurkan')),
                Expanded(child: Text('gurkan')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectContainerSize {
  static const double cardHeight = 200;
}
