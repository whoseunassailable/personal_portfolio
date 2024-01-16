import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/svg.dart';

class ImageScroll extends StatelessWidget {
  final double height;
  final double width;
  final Map<String, SvgPicture> listOfSkills;

  final PageController _pageController = PageController(viewportFraction: 0.7);

  ImageScroll(
      {super.key,
      required this.height,
      required this.width,
      required this.listOfSkills});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.3,
      width: width * 0.8,
      child: PageView.builder(
        controller: _pageController,
        itemCount: (listOfSkills.keys.length / 3).ceil(),
        itemBuilder: (context, pageIndex) {
          return Row(
            children: [
              Container(
                height: height * 0.3,
                width: width * 0.8,
                child: ListView.builder(
                  dragStartBehavior: DragStartBehavior.down,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfSkills.length,
                  itemBuilder: (context, index) {
                    List<SvgPicture> images = [];
                    List<String> texts = [];
                    for (MapEntry skills in listOfSkills.entries) {
                      images.add(skills.value);
                      texts.add(skills.key);
                    }
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: width / 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          images[index],
                          Text(texts[index]),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
