import 'package:flutter/cupertino.dart';
import '../constants/app_colors.dart';

class HeaderAndDescription extends StatelessWidget {
  final String title;
  final List<String> descriptionPoints;
  final double height;
  final double width;
  final double titleFontSize;
  final double descriptionFontSize;

  const HeaderAndDescription({
    super.key,
    required this.title,
    required this.descriptionPoints,
    required this.titleFontSize,
    required this.descriptionFontSize,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height / 20),
          Text(
            title,
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: titleFontSize,
            ),
          ),
          SizedBox(height: height / 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              descriptionPoints.length,
              (index) => Text(
                descriptionPoints[index],
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: descriptionFontSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
