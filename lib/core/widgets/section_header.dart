import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class SectionHeader extends StatelessWidget {
  final String text;
  final int rotatedBoxText;
  final int rotatedBoxContainer;
  final BorderRadiusGeometry? borderRadius;
  final Offset offset;
  const SectionHeader({
    super.key,
    required this.text,
    required this.rotatedBoxText,
    required this.borderRadius,
    required this.offset,
    required this.rotatedBoxContainer,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return RotatedBox(
      quarterTurns: rotatedBoxContainer,
      child: Container(
        height: height / 2,
        width: width / 23,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.textColor),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 2.0,
              spreadRadius: 5,
              offset: offset,
            ),
          ],
          borderRadius: borderRadius,
        ),
        child: RotatedBox(
          quarterTurns: rotatedBoxText,
          child: Text(
            text,
            style: const TextStyle(fontSize: 45),
          ),
        ),
      ),
    );
  }
}
