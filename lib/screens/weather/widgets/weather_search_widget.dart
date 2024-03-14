import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../cubit/weather_cubit.dart';

class WeatherSearchWidget extends StatelessWidget {
  const WeatherSearchWidget({
    super.key,
    required this.size,
    required this.textController, required this.onCitySearch, required this.onClearSearch,
  });

  final Size size;
  final TextEditingController textController;
  final Function(String) onCitySearch;
  final Function() onClearSearch;

  @override
  Widget build(BuildContext context) {
    return AnimSearchBar(
      rtl: true,
      width: size.width * 0.9,
      textController: textController,
      suffixIcon: const Icon(
        Icons.search,
        color: Colors.black,
        size: 26,
      ),
      onSuffixTap: () async {
        FocusScope.of(context).unfocus();
        textController.clear();
      },
      style: f14RblackLetterSpacing2,
      onSubmitted: (String value) {
        if (value.isEmpty) {
          onClearSearch();
        } else {
          onCitySearch(value);
        }
      },
    );
  }
}
