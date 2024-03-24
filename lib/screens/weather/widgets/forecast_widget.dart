import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main/cubit/main_cubit.dart';

class ForecastWidget extends StatelessWidget {
  const ForecastWidget({
    super.key,
    required this.time,
    required this.minTemp,
    required this.maxTemp,
    required this.weatherIcon,
    required this.size,
    required this.isDarkMode,
  });

  final String time;
  final int minTemp;
  final int maxTemp;
  final String weatherIcon;
  final Size size;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    String iconUrl = 'assets/images/$weatherIcon.png';
    Localization localizer = Localization.of(context);
    String localizedTime = localizer.translate(time);


    return Padding(
      padding: EdgeInsets.all(size.height * 0.005),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                  child: Text(
                    localizedTime,
                    style: GoogleFonts.questrial(
                      color: isDarkMode ? Colors.white : Colors.black,
                      fontSize: size.height * 0.03,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Image.asset(iconUrl, height: size.height * 0.03)),
              Expanded(
                flex: 1,
                child: Text(
                  '$minTemp˚C',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.questrial(
                    color: isDarkMode ? Colors.white38 : Colors.black38,
                    fontSize: size.height * 0.025,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(right: size.width * 0.05),
                  child: Text(
                    '$maxTemp˚C',
                    textAlign: TextAlign.end,
                    style: GoogleFonts.questrial(
                      color: isDarkMode ? Colors.white : Colors.black,
                      fontSize: size.height * 0.025,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ],
      ),
    );


  }
}
