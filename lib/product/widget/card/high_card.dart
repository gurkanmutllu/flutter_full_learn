import 'package:flutter/material.dart';

class HighCard extends StatelessWidget {
  const HighCard({super.key, required this.items});

  final List<String> items;
  @override
  Widget build(BuildContext context) {
    return Text(
      items.join(','),
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}
