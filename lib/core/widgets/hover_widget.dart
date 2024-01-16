import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class HoverWidget extends StatefulWidget {
  bool isHovered;
  Widget childWidget;
  HoverWidget({super.key, required this.isHovered, required this.childWidget});

  @override
  State<HoverWidget> createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MouseRegion(
      onHover: (event) => setState(() => widget.isHovered = true),
      onExit: (event) => setState(() => widget.isHovered = false),
      cursor: SystemMouseCursors.click,
      child: Container(
        margin: widget.isHovered
            ? EdgeInsets.fromLTRB(
                width / 40, width / 40, width / 40, width / 40)
            : null,
        padding: EdgeInsets.fromLTRB(width / 50, width / 100, 0, 0),
        decoration: BoxDecoration(
          color: widget.isHovered ? AppColors.bgColor : Colors.white,
          boxShadow: [
            widget.isHovered
                ? const BoxShadow(
                    offset: Offset(-3, 0),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                : const BoxShadow(color: Colors.transparent),
          ],
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: widget.childWidget,
      ),
    );
  }
}
