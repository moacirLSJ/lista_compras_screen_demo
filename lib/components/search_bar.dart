import 'package:flutter/material.dart';

class SearchBarHome extends StatefulWidget {
  const SearchBarHome({Key? key}) : super(key: key);

  @override
  State<SearchBarHome> createState() => _SearchBarHomeState();
}

class _SearchBarHomeState extends State<SearchBarHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xFFF4F5F9),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  prefixIcon: Icon(Icons.search, size: 20),
                  suffixIcon: Icon(Icons.menu_outlined),
                  hintText: 'Search keywords...',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
