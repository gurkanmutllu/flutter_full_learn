import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/launch_manager.dart';
import 'package:flutter_full_learn/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with LaunchMixin {
  final Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
        onPressed: () {
          launchUrl(_url);
        },
      ),
      body: Column(
        children: [
          Text('data', style: Theme.of(context).textTheme.subtitle1),
          LoadingBar(size: 80.0),
        ],
      ),
    );
  }
}
