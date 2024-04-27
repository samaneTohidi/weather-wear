import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key,
    required this.fetchApiByCity,
  }) : super(key: key);

  final Function(String) fetchApiByCity;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 20, color: Colors.black),
      decoration: InputDecoration(
        hintText: "Search...",
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
        prefixIcon: Icon(Icons.search, color: Colors.black),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
      onSubmitted: (String value) {
        widget.fetchApiByCity(value);
      },
    );
  }
}
