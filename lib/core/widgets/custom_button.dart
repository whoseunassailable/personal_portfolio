import 'package:flutter/material.dart';
import 'package:shadow/shadow.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/app_localizations.dart';
import '../constants/app_colors.dart';

// class CustomButton extends StatelessWidget {
//   final double borderRadius;
//   final Widget? icon;
//   final double height;
//   final double width;
//   final double? iconWidth;
//   const CustomButton(
//       {super.key,
//       required this.borderRadius,
//       this.icon,
//       required this.width,
//       required this.height,
//       this.iconWidth});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         SizedBox(
//           height: height,
//           width: width,
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColors.buttonColor, // Background color
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(
//                     30.0,
//                   ), // Adjust the radius as needed
//                 ),
//                 alignment: Alignment.centerLeft),
//             onPressed: () {},
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   AppLocalizations.of(context).moreAboutMe,
//                   style: const TextStyle(
//                       color: AppColors.textColor,
//                       fontWeight: FontWeight.w700,
//                       fontSize: 24),
//                 ),
//                 SizedBox(width: width / 18),
//                 Assets.icons.circularArrow.svg(
//                   // width: iconWidth,
//                   height: height * 0.78,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class CustomButton extends StatelessWidget {
  final double height;
  final double width;

  CustomButton({
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          child: Row(
            children: [
              SizedBox(width: width / 12.5),
              Text(
                AppLocalizations.of(context).moreAboutMe,
                style: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: width / 17),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey
                          .withOpacity(0.5), // Adjust the shadow color
                      blurRadius: 5, // Adjust the blur radius
                      offset: Offset(-5, 1), //// Adjust the offset
                    ),
                  ],
                ),
                child: Assets.icons.circularArrow.svg(width: width / 3.5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
