import 'package:flutter/material.dart';

class MyNav extends StatefulWidget {
  const MyNav({super.key});

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
          icon: Icon(Icons.message_rounded),
          label: 'Inbox',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Education'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: 'Account'
          )
        ],
      );
  }
}