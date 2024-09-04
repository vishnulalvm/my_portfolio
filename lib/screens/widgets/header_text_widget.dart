import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/screens/widgets/download_cv_widget.dart';
import 'package:my_portfolio/screens/widgets/social_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
           horizontal: size.height * 0.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'data',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 26,
            ),
          ),
          GradientText(
            "werb \n ux desiner",
            colors: const [
              AppColors.studio,
              AppColors.paleSlate,
            ],
            style: TextStyle(
              fontSize: size.width * 0.040,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: size.width * 0.5,
            child: const Text(
              'You can also use the Quick Fix command Ctrl+. to display a list of Quick Fixes and refactoring options. To only display refactoring options, you can right-click the editor and select Refactor Ctrl+Shift+R',
              style: TextStyle(color: Colors.white),
            ),
          ),
          // SizedBox(
          //   width: size.width * 0.5,
          //   child: const SocialSection(),
          // )
        ],
      ),
    );
  }
}

class SocialLarge extends StatelessWidget {
  final Size size;
  const SocialLarge({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.5,
      child: const Row(
        children: [
          DownloadCvWidget(),
          SizedBox(
            width: 20,
          ),
          SocialWidget(),
        ],
      ),
    );
  }
}
