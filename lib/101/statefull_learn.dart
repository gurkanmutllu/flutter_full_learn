import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  void _updateValue(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _increaseButton(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: _decreaseButton(),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headline2,
          )),
          const SizedBox(height: 300, child: Placeholder()),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _increaseButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateValue(true);
      },
      child: const Icon(Icons.add),
    );
  }

  FloatingActionButton _decreaseButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateValue(false);
      },
      child: const Icon(Icons.remove),
    );
  }
}
