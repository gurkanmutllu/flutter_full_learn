import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          print('ss');
        },
        child: Column(
          children: [
            TextFormField(
              validator: FormFieldValidator().isNotEmpty,
            ),
            TextFormField(
              validator: FormFieldValidator().isNotEmpty,
            ),
            DropdownButtonFormField(
              validator: FormFieldValidator().isNotEmpty,
              items: [
                DropdownMenuItem(
                  child: Text('a'),
                  value: 'v',
                ),
                DropdownMenuItem(
                  child: Text('a'),
                  value: 'v2',
                ),
                DropdownMenuItem(
                  child: Text('a'),
                  value: 'v3',
                ),
              ],
              onChanged: (value) {},
            ),
            CheckboxListTile(
              value: true,
              onChanged: (value) {},
            ),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print('okey');
                  }
                },
                child: Text('Save'))
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmpty;
  }
}

class ValidatorMessage {
  static const String _notEmpty = 'Boş Geçilemez!';
}
