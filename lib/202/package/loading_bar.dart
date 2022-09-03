import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, required this.size});

  final double? size;
  final _defaultSize = 40.0;

  @override
  Widget build(BuildContext context) {
    return SpinKitPianoWave(
      color: Colors.purpleAccent,
      size: size ?? _defaultSize,
    );
  }
}
