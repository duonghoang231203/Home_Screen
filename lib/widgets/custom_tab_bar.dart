import 'package:flutter/material.dart';

import '../utils/titles.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      indicatorColor: Colors.white,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey,
      isScrollable: true,
      labelPadding: const EdgeInsets.symmetric(horizontal: 24),
      // padding: EdgeInsets.zero,
      tabs: [
        Tab(text: Titles.trending),
        Tab(text: Titles.linkedin),
        Tab(text: Titles.aesthetic),
        Tab(text: Titles.special),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
