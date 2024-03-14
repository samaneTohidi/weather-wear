import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutfitWidget extends StatelessWidget {
  const OutfitWidget({
    super.key,
    required this.apparelName,
    required this.apparelIcon,
    required this.size,
    required this.isDarkMode,
  });

  final String apparelName;
  final List<String> apparelIcon;
  final Size size;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomIndex = random.nextInt(apparelIcon.length);
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade200.withOpacity(0.4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  apparelName,
                  style: GoogleFonts.questrial(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: size.height * 0.02,
                  ),
                ),
                Image.asset(
                  'assets/apparel/${apparelIcon[randomIndex]}.png',
                  width: 24,
                  height: 24,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
