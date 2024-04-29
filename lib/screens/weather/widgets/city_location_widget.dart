import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CityLocationWidget extends StatefulWidget {
  final VoidCallback toggleWidget;
  final String cityName;
   const CityLocationWidget({super.key, required this.toggleWidget , required this.cityName});

  @override
  State<CityLocationWidget> createState() => _CityLocationWidgetState();
}

class _CityLocationWidgetState extends State<CityLocationWidget> {

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.toggleWidget,
      child: RichText(
        text: TextSpan(
          children: <InlineSpan>[
            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: SvgPicture.asset('assets/images/map.svg',width: 24, height: 24)
            ),
            const WidgetSpan(
              child: SizedBox(width: 8), // Adjust the width to your desired padding
            ),
            TextSpan(
                text: widget.cityName,
                style: TextStyle(fontStyle: FontStyle.normal, fontSize: 16)
            ),
            const WidgetSpan(
              child: SizedBox(width: 8), // Adjust the width to your desired padding
            ),
            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: SvgPicture.asset('assets/images/opt.svg',width: 24, height: 24)
            ),
          ],
        ),
      ),
    );
  }
}
