import 'package:book_repair/screens/favorites_screen/favorites_screen.dart';
import 'package:book_repair/screens/home_screen/widgets/grid_view.dart';
import 'package:book_repair/screens/profile_screen/profile_screen.dart';
import 'package:book_repair/screens/settings_screen/settings_screen.dart';
import 'package:book_repair/widgets/app_bar/app_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, this.tabIndex = 0});
  late int tabIndex;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final navItems = [
    const Icon(Icons.home, size: 30),
    const Icon(Icons.list_alt, size: 30),
    const Icon(Icons.person, size: 30),
    const Icon(Icons.settings, size: 30),
  ];
  // late List<Widget> tabs;
  int currentTabIndex = 0;
  final screens = [
    const GridViewCards(),
    const ProfileScreen(),
    const FavoritesScreen(),
    const SettingsScreen(),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 6),
        child: const CustomAppBar(
          appBarTitle: 'Welcome',
          userName: 'Mihailo Vukojicic',
        ),
      ),
      body: screens[currentTabIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 60,
        items: navItems,
        index: currentTabIndex,
        onTap: (ind) => setState(() {
          currentTabIndex = ind;
        }),
      ),
    );
  }
}
