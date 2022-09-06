import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

import 'feed_view.dart';

class TabAdvanceLearn extends StatefulWidget {
  const TabAdvanceLearn({super.key});

  @override
  State<TabAdvanceLearn> createState() => _TabAdvanceLearnState();
}

class _TabAdvanceLearnState extends State<TabAdvanceLearn> with TickerProviderStateMixin {
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
            child: _myTabView(tabController: _tabController),
          ),
          appBar: AppBar(),
          body: _tabbarView(tabController: _tabController),
        ));
  }
}

class _myTabView extends StatelessWidget {
  const _myTabView({
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
                text: '${e.name}',
              ))
          .toList(),
    );
  }
}

class _tabbarView extends StatelessWidget {
  const _tabbarView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [FeedView(), IconLearnView(), StackLearn(), IconLearnView()]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MytabViewExtension on _MyTabViews {}
