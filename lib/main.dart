import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';

import '202/alert_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      home: AlertLearn(),
    );
  }
}

      // ThemeData.dark().copyWith(
      //   tabBarTheme: TabBarTheme(
      //     labelColor: Colors.white,
      //     unselectedLabelColor: Colors.red,
      //     indicatorSize: TabBarIndicatorSize.label,
      //   ),
      //   bottomAppBarTheme: BottomAppBarTheme(
      //     shape: CircularNotchedRectangle(),
      //   ),
      //   progressIndicatorTheme: ProgressIndicatorThemeData(
      //     color: Colors.white,
      //   ),
      //   cardTheme: CardTheme(
      //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //   ),
      //   errorColor: ColorsItems.gurkan,
      //   appBarTheme: AppBarTheme(
      //     centerTitle: true,
      //     systemOverlayStyle: SystemUiOverlayStyle.light,
      //     backgroundColor: Colors.transparent,
      //     // önde kalmasını sağlamak için elevation veriliyor.
      //     elevation: 0,
      //   ),
      //   textSelectionTheme: TextSelectionThemeData(
      //     selectionColor: Colors.red,
      //     cursorColor: Colors.blue,
      //   ),
      //   inputDecorationTheme: InputDecorationTheme(
      //     filled: true,
      //     fillColor: Colors.white,
      //     iconColor: Colors.blue,
      //     border: OutlineInputBorder(),
      //     floatingLabelStyle: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.w600),
      //   ),
      // ),
