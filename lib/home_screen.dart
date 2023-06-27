import 'package:flutter/material.dart';
import 'package:nav_notification/CartScreen.dart';
import 'package:nav_notification/FavScreen.dart';
import 'package:nav_notification/NotificationScreen.dart';
import 'package:nav_notification/provider_count.dart';
import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  List<Widget> builScreen() {
    return [
      NotificationScreen(),
      const CartScreen(),
      const FavScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, countProvider, child) => Scaffold(
        // appBar: AppBar(),
        body: PersistentTabView(context, screens: builScreen(), items: [
          PersistentBottomNavBarItem(
            icon: badges.Badge(
              badgeContent: Text(
                countProvider.notifi_count.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              child: const Icon(Icons.notifications),
            ),
            title: ("Notification"),
            activeColorPrimary: Colors.blue,
            inactiveColorPrimary: Colors.grey,
          ),
          PersistentBottomNavBarItem(
            icon: badges.Badge(
              badgeContent: Text(
                countProvider.cart_count.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              child: const Icon(Icons.shopping_cart),
            ),
            // icon: Icon(Icons.shopping_cart),
            title: ("Cart"),
            activeColorPrimary: Colors.blue,
            inactiveColorPrimary: Colors.grey,
          ),
          PersistentBottomNavBarItem(
            icon: badges.Badge(
              badgeContent: Text(
                countProvider.fav_count.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              child: const Icon(Icons.favorite),
            ),
            title: ("Favourites"),
            activeColorPrimary: Colors.blue,
            inactiveColorPrimary: Colors.grey,
          ),
        ]),
      ),
    );
  }
}
