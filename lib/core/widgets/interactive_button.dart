import 'package:flutter/cupertino.dart';
import '../constants/app_colors.dart';

class InteractiveButton extends StatefulWidget {
  final double height;
  final double width;
  final Widget childWidget;
  Color? color;

  InteractiveButton({
    super.key,
    required this.height,
    required this.width,
    required this.childWidget,
    this.color = AppColors.greyColor,
  });

  @override
  State<InteractiveButton> createState() => _InteractiveButtonState();
}

class _InteractiveButtonState extends State<InteractiveButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      alignment: Alignment.center,
      child: widget.childWidget,
    );
  }
}
