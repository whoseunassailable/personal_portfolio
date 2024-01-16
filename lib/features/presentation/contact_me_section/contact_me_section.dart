import 'package:flutter/cupertino.dart';
import 'package:personal_portfolio/features/presentation/contact_me_section/shoot_me_an_email_container.dart';
import 'package:personal_portfolio/features/presentation/contact_me_section/socials_container.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 1.2,
      width: width,
      color: CupertinoColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 1.2,
            width: width,
            child: Stack(
              children: [
                Positioned(
                  top: (height * 1.2 - height) / 2,
                  left: width * 0.3,
                  child: ShootMeAnEmailContainer(
                    height: height,
                    width: width,
                  ),
                ),
                Positioned(
                    top: ((height * 1.2) - (height * 0.8)) / 2,
                    left: width * 0.04,
                    child: SocialsContainer(height: height, width: width)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
