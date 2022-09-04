import 'package:flutter/material.dart';
import 'state_manage_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView> {
  @override
  void initState() {
    super.initState();
  }

  final double kZero = 0;
  bool isVisible = false;
  bool isOpacity = false;
  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}
