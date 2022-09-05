import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SharedContextLearn extends StatefulWidget {
  const SharedContextLearn({super.key});

  @override
  State<SharedContextLearn> createState() => _SharedContextLearnState();
}

enum _SecureKeys { token }

class _SharedContextLearnState extends State<SharedContextLearn> {
  final _storage = const FlutterSecureStorage();
  String _title = '';
  TextEditingController _controller = TextEditingController();
  void saveItems(String data) {
    setState(() {
      _title = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getSecureItems();
  }

  Future<void> getSecureItems() async {
    _title = await _storage.read(key: _SecureKeys.token.name) ?? '';
    if (_title.isNotEmpty) {
      print('bu adam appi önceden kullanmış ve tokeni bu');
      _controller.text = _title;
      print(_controller.text);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await _storage.write(key: _SecureKeys.token.name, value: _title);
          },
          child: Text('Save')),
      body: TextField(
        controller: _controller,
        onChanged: saveItems,
        minLines: 3,
        maxLines: 4,
      ),
    );
  }
}
