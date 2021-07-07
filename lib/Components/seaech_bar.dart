import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FloatingSearchBar.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text(index.toString()),
          );
        },
        trailing: const CircleAvatar(
          child: Text("RD"),
        ),
        drawer: Drawer(
          child: Container(),
        ),
        onChanged: (String value) {},
        onTap: () {},
        decoration: const InputDecoration.collapsed(
          hintText: "Search...",
        ),
      ),
    );
  }
}
