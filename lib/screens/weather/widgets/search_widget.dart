import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatefulWidget {
  final VoidCallback toggleWidget;
  const SearchWidget({Key? key,
    required this.fetchApiByCity, required this.toggleWidget,
  }) : super(key: key);

  final Function(String) fetchApiByCity;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final Color customGrey = const Color(0xFF7A7A7A);
  final Color customBackgroundGrey =  const Color(0xFFD9D9D9);
  @override
  Widget build(BuildContext context) {
    return TextField(
      style:  TextStyle(fontSize: 16, color: customGrey),
      decoration: InputDecoration(
        hintText: "Your location",
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
        prefixIcon: Container(
          width: 24,
          height: 24,
          margin: const EdgeInsets.all(12),
          child: SvgPicture.asset('assets/images/map.svg',color: customGrey, // Apply grey color
              colorBlendMode: BlendMode.srcIn),
        ),
        suffixIcon: Container(
          width: 24,
          height: 24,
          margin: const EdgeInsets.all(12),
          child: SvgPicture.asset('assets/images/search.svg',color: customGrey, // Apply grey color
              colorBlendMode: BlendMode.srcIn),
        ),
        filled: true,
        fillColor:customBackgroundGrey ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45),
        ),
      ),
      onSubmitted: (String value) {
        widget.fetchApiByCity(value);
        widget.toggleWidget();
      },
    );
  }
}
