import 'package:flutter/material.dart';

BottomNavigationBar footerButtons() {
  return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outlined,), label: "Profile",),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,),label: "Chat"),
      ]
  );
}
