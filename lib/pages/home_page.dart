import 'package:flutter/material.dart';
import 'package:home_screen/widgets/custom_app_bar.dart'; // Ensure CustomAppBar is imported correctly
import '../widgets/custom_tab_bar.dart';
import '../widgets/home_section_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false, // Or true if you want the app bar to be pinned
            floating: false,
            expandedHeight: 280.0,
            flexibleSpace: CustomAppBar(), // Use CustomAppBar here
          ),
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double width = constraints.maxWidth - 32;

                return Column(
                  children: [
                    CustomTabBar(tabController: _tabController),
                    const SizedBox(height: 10),
                    HomeSectionContainer(width: width),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
