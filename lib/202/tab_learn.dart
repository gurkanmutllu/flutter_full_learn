import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  final double _notchedValue = 10;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(_MyTabViews.home.index);
            },
          ),
          extendBody: true,
          bottomNavigationBar: BottomAppBar(
            notchMargin: _notchedValue,
            child: _MyTabView(tabController: _tabController),
          ),
          appBar: AppBar(),
          body: _TabbarView(tabController: _tabController),
        ));
  }
}

class _MyTabView extends StatelessWidget {
  const _MyTabView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      padding: EdgeInsets.zero,
      onTap: (int index) {},
      tabs: _MyTabViews.values
          .map((e) => Tab(
                text: e.name,
              ))
          .toList(),
    );
  }
}

class _TabbarView extends StatelessWidget {
  const _TabbarView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [const StackLearn(), IconLearnView(), const StackLearn(), IconLearnView()]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MytabViewExtension on _MyTabViews {}
