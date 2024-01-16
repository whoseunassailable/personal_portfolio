import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../utils/getFontSize.dart';

class CustomTextFormField extends StatelessWidget {
  final double width;
  final String labelText;
  final TextEditingController textController;
  final int? maxLines;
  const CustomTextFormField({
    super.key,
    required this.width,
    required this.textController,
    required this.labelText,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        filled: true,
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: getCustomFontSize(
            size: AppLocalizations.of(context).xxs,
            width: width,
          ),
        ),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      controller: textController,
    );
  }
}
