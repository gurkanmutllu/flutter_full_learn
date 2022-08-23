
import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text("aa" *500),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("b" *50),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 200, minWidth: 100, minHeight: 25,maxHeight: 120),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            child: Text("aa"*100, maxLines: 2,),
          )
        ],
      ),

    );   
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(colors: [Colors.red, Colors.black]),
    boxShadow: const [BoxShadow(color: Colors.lime, offset: Offset(0.3, 1), blurRadius: 13)],
    border: Border.all(width: 10, color: Colors.blue)
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration():super(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(colors: [Colors.red, Colors.black]),
    boxShadow: const [BoxShadow(color: Colors.lime, offset: Offset(0.3, 1), blurRadius: 13)],
    border: Border.all(width: 10, color: Colors.white24)
  );
}