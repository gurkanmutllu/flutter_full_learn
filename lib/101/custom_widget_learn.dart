import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomWidgetLearn extends StatelessWidget {
  CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFoodButton(
                    title: title,
                    onPressed: () {},
                  )),
            ),
          ),
          SizedBox(height: 50),
          CustomFoodButton(
            title: title,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget with _ColorsUtility, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title, required this.onPressed}) : super(key: key);
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: redColor, shape: StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normal2xPadding,
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ));
  }
}
