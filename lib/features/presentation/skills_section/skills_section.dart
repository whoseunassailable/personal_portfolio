import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/core/widgets/section_header.dart';
import 'package:personal_portfolio/l10n/app_localizations.dart';
import '../../../gen/assets.gen.dart';
import 'build_scrollable_image.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Map<String, SvgPicture> _osSkillsWithIcons = {
      AppLocalizations.of(context).osOne: Assets.icons.windows.svg(),
      AppLocalizations.of(context).osTwo: Assets.icons.ubuntuIcon.svg(),
      AppLocalizations.of(context).osThree: Assets.icons.macos.svg(),
    };
    Map<String, SvgPicture> _languageSkillsWithIcons = {
      AppLocalizations.of(context).dart: Assets.icons.dart.svg(),
      AppLocalizations.of(context).python: Assets.icons.python.svg(),
      AppLocalizations.of(context).java: Assets.icons.java.svg(),
      AppLocalizations.of(context).javaScript: Assets.icons.javascript.svg(),
    };
    Map<String, SvgPicture> _databaseSkillsWithIcons = {
      AppLocalizations.of(context).mySql: Assets.icons.mysql.svg(),
      AppLocalizations.of(context).firebase: Assets.icons.firebase.svg(),
    };
    Map<String, SvgPicture> _frameworkSkillsWithIcons = {
      AppLocalizations.of(context).flutter: Assets.icons.flutter.svg(),
    };
    Map<String, SvgPicture> _toolsSkillsWithIcons = {
      AppLocalizations.of(context).figma: Assets.icons.figma.svg(),
      AppLocalizations.of(context).obsidian: Assets.icons.obsidian.svg(),
      AppLocalizations.of(context).umlDiagrams: Assets.icons.uml.svg(),
      AppLocalizations.of(context).cicd: Assets.icons.codemagic.svg(),
    };

    return SizedBox(
      height: height * 0.9,
      width: width,
      child: Column(
        children: [
          SectionHeader(
            text: AppLocalizations.of(context).skills,
            rotatedBoxText: 3,
            rotatedBoxContainer: 1,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
            offset: const Offset(10, -20),
          ),
          SizedBox(height: width / 40),
          SizedBox(
            height: height * 0.7,
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildScrollableImage(
                      title: AppLocalizations.of(context).os,
                      height: height * 0.3,
                      width: height * 0.3,
                      listOfSkills: _osSkillsWithIcons,
                    ),
                    SizedBox(width: width / 10),
                    BuildScrollableImage(
                      title: AppLocalizations.of(context).framework,
                      height: height * 0.3,
                      width: height * 0.3,
                      listOfSkills: _frameworkSkillsWithIcons,
                    ),
                    SizedBox(width: width / 10),
                    BuildScrollableImage(
                      title: AppLocalizations.of(context).languages,
                      height: height * 0.3,
                      width: height * 0.3,
                      listOfSkills: _languageSkillsWithIcons,
                    ),
                  ],
                ),
                SizedBox(height: height / 15),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildScrollableImage(
                      title: AppLocalizations.of(context).database,
                      height: height * 0.3,
                      width: height * 0.3,
                      listOfSkills: _databaseSkillsWithIcons,
                    ),
                    SizedBox(width: width / 10),
                    BuildScrollableImage(
                      title: AppLocalizations.of(context).tools,
                      height: height * 0.3,
                      width: height * 0.3,
                      listOfSkills: _toolsSkillsWithIcons,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
