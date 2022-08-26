import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(text: "gurkan1"),
          _emptyBox(),
          TitleTextWidget(text: "gurkan2"),
          _emptyBox(),
          TitleTextWidget(text: "gurkan3"),
          TitleTextWidget(text: "gurkan4"),
          _emptyBox(),
          TitleTextWidget(text: "gurkan5"),
          _emptyBox(),
          _CustomContainer(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() {
    return SizedBox(
      height: 10,
    );
  }
}

// class isminin başına '_' eklenmesi sadece bu dosyadan bu classa erişilebilmesini sağlar.
class _CustomContainer extends StatelessWidget {
  const _CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
