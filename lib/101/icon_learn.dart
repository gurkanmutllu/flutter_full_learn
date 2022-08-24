import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColor.froly,
                size: iconSize.iconSmall,
              )),
          SizedBox(
            height: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Colors.blue,
                size: iconSize.iconMedium,
              )),
          SizedBox(
            height: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context).colorScheme.error,
                size: iconSize.iconLarge,
              )),
          SizedBox(
            height: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context).backgroundColor,
                size: iconSize.iconLarge,
              )),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 30;
  final double iconMedium = 50;
  final double iconLarge = 70;
}

class IconColors {
  final Color froly = Color(0xffED617A);
}
