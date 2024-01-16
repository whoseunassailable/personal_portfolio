import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildScrollableImage extends StatefulWidget {
  final double height;
  final double width;
  final String title;
  final Map<String, SvgPicture> listOfSkills;

  const BuildScrollableImage({
    Key? key,
    required this.height,
    required this.width,
    required this.listOfSkills,
    required this.title,
  }) : super(key: key);

  @override
  _BuildScrollableImageState createState() => _BuildScrollableImageState();
}

class _BuildScrollableImageState extends State<BuildScrollableImage> {
  late final PageController _pageController;
  late final Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < widget.listOfSkills.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.listOfSkills.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var skillsEntry = widget.listOfSkills.entries.elementAt(index);
          var skillName = skillsEntry.key;
          var skillImage = skillsEntry.value;
          // Calculate the scale factor based on the position relative to the center.
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: EdgeInsets.symmetric(horizontal: widget.width / 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex: 3, child: skillImage),
                Expanded(
                  flex: 1,
                  child: Text(skillName),
                ),
                Expanded(
                  flex: 1,
                  child: Text(widget.title),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
