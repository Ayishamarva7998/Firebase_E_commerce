// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, override_on_non_overriding_member

import 'package:firebase_login/controller/bottombar_provider.dart';
import 'package:firebase_login/controller/wishlist_provider.dart';
import 'package:firebase_login/views/home.dart';
import 'package:firebase_login/views/settings/settings.dart';
import 'package:firebase_login/views/storagepage.dart';
import 'package:firebase_login/views/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BottomNavigation> {
  @override
    final List<Widget> _pages = [
    HomePage(),
    StorePage(),
    WishlistPage(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomProvider=Provider.of<BottomBarProvider>(context);
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 24, 30, 41),
      body: _pages[bottomProvider.currentIndex],
      bottomNavigationBar: Container( 
        child: NavigationBar(
          backgroundColor:  Color.fromARGB(255, 18, 23, 31),
          selectedIndex: bottomProvider.currentIndex,
          onDestinationSelected: (index) {
            bottomProvider.navigatePage(index);
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home,
                  color:  bottomProvider.currentIndex == 0 ? Colors.white : const Color.fromARGB(255, 106, 105, 105)),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop,
                  color:  bottomProvider.currentIndex == 1 ? Colors.white : const Color.fromARGB(255, 106, 105, 105)),
              label: 'Store',
              
            ),
            NavigationDestination(
              icon: Icon(Iconsax.lovely,
                  color:  bottomProvider.currentIndex == 2 ? Colors.white : const Color.fromARGB(255, 106, 105, 105)),
              label: 'WishList',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user,
                  color:  bottomProvider.currentIndex == 3 ? Colors.white : const Color.fromARGB(255, 106, 105, 105)),
              label: 'User',
      
            ),
          ],
          indicatorColor: Colors.amber,
        ),
      ),
    );
  }
}