import 'package:ecomerce/favorite.dart';
import 'package:ecomerce/home.dart';
import 'package:ecomerce/messages.dart';
import 'package:ecomerce/profile.dart';
import 'package:flutter/material.dart';

class BottumBavigationBar extends StatefulWidget {
  const BottumBavigationBar({super.key});

  @override
  State<BottumBavigationBar> createState() => _BottumBavigationBarState();
}

class _BottumBavigationBarState extends State<BottumBavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const Favorite(),
    const MessagesPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
