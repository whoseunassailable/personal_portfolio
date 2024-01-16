import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/core/constants/app_colors.dart';
import 'package:personal_portfolio/core/utils/getFontSize.dart';
import 'package:personal_portfolio/l10n/app_localizations.dart';

import '../../../gen/assets.gen.dart';

class SocialsContainer extends StatefulWidget {
  final double height;
  final double width;
  const SocialsContainer(
      {super.key, required this.height, required this.width});

  @override
  State<SocialsContainer> createState() => _SocialsContainerState();
}

class _SocialsContainerState extends State<SocialsContainer> {
  @override
  Widget build(BuildContext context) {
    Map<String, SvgPicture> iconAndNameOfIconMap = {
      AppLocalizations.of(context).github:
          Assets.icons.github.svg(width: widget.width / 20),
      AppLocalizations.of(context).linkedIn:
          Assets.icons.linkedin.svg(width: widget.width / 20),
      AppLocalizations.of(context).stackOverflow:
          Assets.icons.stackOverflow.svg(width: widget.width / 20),
      AppLocalizations.of(context).email:
          Assets.icons.email.svg(width: widget.width / 20),
    };

    return Container(
      height: widget.height * 0.8,
      width: widget.width * 0.3,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 5,
            spreadRadius: 5,
            color: Colors.grey,
          )
        ],
        color: AppColors.buttonColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: widget.width / 50),
          Text(
            AppLocalizations.of(context).socials,
            style: TextStyle(
              fontSize: getCustomFontSize(
                size: AppLocalizations.of(context).m,
                width: widget.width,
              ),
            ),
          ),
          SizedBox(height: widget.height / 25),
          SizedBox(
            height: (widget.height * 0.8) * 0.55,
            width: widget.width * 0.3,
            child: ListView.separated(
              itemCount: iconAndNameOfIconMap.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                MapEntry<String, SvgPicture> mapEntry =
                    iconAndNameOfIconMap.entries.elementAt(index);
                String iconName = mapEntry.key;
                SvgPicture icon = mapEntry.value;
                return _iconAndNameOfIcon(
                  icon: icon,
                  iconName: iconName,
                  width: widget.width,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: widget.width / 80);
              },
            ),
          ),
        ],
      ),
    );
  }

  _iconAndNameOfIcon(
      {required SvgPicture icon,
      required String iconName,
      required final width}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 40),
      child: ListTile(
        leading: icon,
        title: Text(
          iconName,
          style: TextStyle(
              fontSize: getCustomFontSize(
                  size: AppLocalizations.of(context).xxs, width: width)),
        ),
      ),
    );
  }
}
