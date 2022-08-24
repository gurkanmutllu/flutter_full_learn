import 'dart:ui';

import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = 'Gurkan';
  final String? userName;

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $name ${name.length}', 
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: const TextStyle(
                wordSpacing: 2, 
                letterSpacing: 2, 
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                color: Colors.deepOrangeAccent, 
                fontSize: 16, 
                fontWeight: FontWeight.w600),

              ),
              Text(
              'Welcome $name ${name.length}', 
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle, 
              ),
              // Kod en son bu şekilde olmalı !!
              Text(
              'Welcome $name ${name.length}', 
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColors.welcomeColor), 
              ),
              Text(userName ?? ''),
              Text(keys.welcome),

          ],
        )),
    );
  }
}

class ProjectStyles{
  static TextStyle welcomeStyle = TextStyle(
    wordSpacing: 2, 
    letterSpacing: 2, 
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    color: Colors.lime, 
    fontSize: 16, 
    fontWeight: FontWeight.w600);
}

class ProjectColors{
  static Color welcomeColor = Colors.red;
}

class ProjectKeys{
  final String welcome = 'Merhaba';

}