import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:viewall/pages/categories.dart';
import 'package:viewall/pages/home.dart';
import 'package:viewall/pages/search.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget>pages;
  late HomePage home;
  late Category categories;
  late Search search;
  late Widget currentPage;

  @override
  void initState() {
    home = HomePage();
    search = Search();
    categories= Category();
    pages = [home, search, categories];
    currentPage = HomePage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.white,
          height: 65,
          color: Color.fromARGB(255, 84, 87, 93),
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
            setState(() {
              currentTabIndex= index;
            });
          },
          items: [
        Icon(Icons.home_outlined, color: Colors.white,),
        Icon(Icons.search_outlined,color: Colors.white),
        Icon(Icons.category_outlined,color: Colors.white),
      ]),
      body: pages[currentTabIndex],
    );
  }
}
