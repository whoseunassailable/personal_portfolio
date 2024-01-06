import 'package:flutter/cupertino.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/header_and_description.dart';

class DescriptionAndButton extends StatelessWidget {
  final bool? button;
  final String title;
  final String description;

  const DescriptionAndButton({
    super.key,
    this.button = false,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        HeaderAndDescription(
          title: title,
          descriptionPoints: [description],
          titleFontSize: 30,
          descriptionFontSize: 20,
          height: (height / 1.5) / 1.55,
          width: (width / 1.20) / 2,
        ),
        button! ? navigationButton(context: context) : Container(),
      ],
    );
  }

  Widget navigationButton({required BuildContext context}) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: (height / 1.5) / 4,
      width: (width / 1.20) / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: height / 7,
            width: ((width / 1.20) / 2) / 1.5,
            child: CustomButton(
              height: height / 7,
              width: width / 3.5,
            ),
          ),
        ],
      ),
    );
  }
}
