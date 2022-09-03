import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/app_bar_learn.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/color_learn.dart';
import 'package:flutter_full_learn/101/column_row_learn.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/list_tile_learn.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';
import 'package:flutter_full_learn/101/stateless_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';
import 'package:flutter_full_learn/demos/note_demos_view.dart';

import '101/button_learn.dart';
import '101/custom_widget_learn.dart';
import '101/list_view_builder.dart';
import '101/list_view_learn.dart';
import '101/navigation_learn.dart';
import '101/page_view_learn.dart';
import '101/scaffold_learn.dart';
import '101/stack_learn.dart';
import '101/statefull_learn.dart';
import '101/statefull_life_cycle_learn.dart';
import '101/text_field_learn.dart';
import '202/model_learn_view.dart';
import '202/package_learn_view.dart';
import '202/service/service_learn_view.dart';
import '202/service/service_post_learn_view.dart';
import '202/tab_learn.dart';
import '202/theme_learn_view.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle_view.dart';
import 'demos/my_collections_demos.dart';
import 'demos/stack_demo_view.dart';

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
      home: ThemeLearnView(),
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
