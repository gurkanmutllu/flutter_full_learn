import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/mixin/navigator_mixin.dart';
import 'package:flutter_full_learn/product/navigator/navigator_routes.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({super.key});

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> with NavigatorMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(toString()), actions: [
        IconButton(
            onPressed: () async {
              router.pushToPage(NavigateRoutes.init);
              // NavigatorManager.instance.pushToPage(NavigateRoutes.init);
            },
            icon: const Icon(Icons.chevron_left_outlined))
      ]),
      floatingActionButton: FloatingActionButton.large(
        child: const Icon(Icons.abc_rounded),
        onPressed: () async {
          router.pushToPage(NavigateRoutes.detail, arguments: "Gmm");
          // await NavigatorManager.instance.pushToPage(NavigateRoutes.detail, arguments: "gmm");
          // Navigator.of(context).pushNamed(NavigateRoutes.detail.withParaf, arguments: "abc");
        },
      ),
    );
  }
}
