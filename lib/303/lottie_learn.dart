// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/constant/duration_items.dart';
import 'package:flutter_full_learn/product/constant/lottie_items.dart';
import 'package:flutter_full_learn/product/global/theme_notifier.dart';
import 'package:flutter_full_learn/product/navigator/navigator_routes.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

// https://assets2.lottiefiles.com/packages/lf20_ydo1amjm.json

class _LottieLearnState extends State<LottieLearn> with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: DurationItems.durationNormal());
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context).pushReplacementNamed(NavigateRoutes.home.withParaf);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () async {
                await controller.animateTo(isLight ? 0.5 : 1);
                isLight = !isLight;
                Future.microtask(() {
                  context.read<ThemeNotifier>().changeTheme();
                });
              },
              child: Lottie.asset(
                LottieItems.themeChange.lottiePath,
                repeat: false,
                controller: controller,
              )),
        ],
      ),
      body: const LoadingLottie(),
    );
  }
}

class LoadingLottie extends StatelessWidget {
  const LoadingLottie({
    Key? key,
  }) : super(key: key);

  final _loadingLottie = 'https://assets10.lottiefiles.com/datafiles/bEYvzB8QfV3EM9a/data.json';
  // final _loadingLottie = 'https://assets2.lottiefiles.com/packages/lf20_ydo1amjm.json';

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.network(_loadingLottie));
  }
}
