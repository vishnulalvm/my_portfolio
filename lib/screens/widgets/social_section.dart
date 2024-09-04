import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/widgets/download_cv_widget.dart';
import 'package:my_portfolio/screens/widgets/social_widget.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DownloadCvWidget(),
          SizedBox(
            width: 20,
          ),
          Expanded(child: SocialWidget()),
        ],
      ),
    );
  }
}
