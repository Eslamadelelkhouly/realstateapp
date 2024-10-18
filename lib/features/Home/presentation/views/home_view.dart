import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/core/constant.dart';
import 'package:realstateapp/features/Create%20Project/presentation/views/add_project_view_body.dart';
import 'package:realstateapp/features/Home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  // List of pages to navigate
  final List<Widget> _pages = [
    HomeViewBody(),
    AddProjectViewBody(),
    Center(child: Text('Profile')), // Placeholder for another screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: index,
        key: _bottomNavigationKey,
        items: const <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.add_task, size: 30),
          Icon(Icons.person, size: 30),
        ],
        color: Colors.white,
        animationCurve: Curves.easeInOut,
        backgroundColor: secondryColor,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _pages[index],
    );
  }
}
