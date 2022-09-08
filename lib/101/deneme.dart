import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class denemeLearnView extends StatefulWidget {
  denemeLearnView({Key? key}) : super(key: key);

  @override
  State<denemeLearnView> createState() => _denemeLearnViewState();
}

class _denemeLearnViewState extends State<denemeLearnView> {
  late String _title;
  late String _text;
  late bool _isChanged = false;

  @override
  void initState() {
    super.initState();
    _title = '';
    _text = '';
  }

  void _onChange() {
    setState(() {
      _isChanged = !_isChanged;
    });
  }

  String _changeText() {
    _onChange();
    setState(() {
      _isChanged ? _title = 'deneme' : _title = 'denemeee<3';
      _isChanged ? _text = 'deneme' : _text = 'denemeee<3';
    });
    return _title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.chevron_left),
        actions: [
          IconButton(
              onPressed: () {
                _changeText();
              },
              icon: Icon(
                Icons.favorite_outlined,
                color: Colors.deepPurpleAccent,
              )),
        ],
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular(20)),
          child: Text(
            _text,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
