import 'package:flutter/material.dart';
import 'package:flutter_full_learn/demos/password_text_field.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({super.key});

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const PasswordTextField(),
          CheckboxListTile(
            value: true,
            onChanged: (value) {},
            title: const Text('Select'),
          )
        ],
      ),
    );
  }
}
