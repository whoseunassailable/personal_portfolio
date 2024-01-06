import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/constants/app_colors.dart';
import '../about_me_section/about_me_section.dart';
import '../experience_section/experience_section.dart';
import '../section_navigator/section_navigator.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: AppColors.bgColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SectionNavigator(),
                SizedBox(height: height / 13),
                const AboutMeSection(),
                SizedBox(height: height / 13),
                const ExperienceSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
