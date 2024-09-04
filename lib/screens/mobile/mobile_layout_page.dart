import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/styles.dart';
import 'package:my_portfolio/screens/tablet/tablet_layout_page.dart';
import 'package:my_portfolio/screens/widgets/header_text_widget.dart';
import 'package:my_portfolio/screens/widgets/rotaiting_image_widget.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const RotaitingImageContainer(),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    // flex: 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        HeaderTextWidget(size: size),
                        const SizedBox(height: 20),
                        SocialTab(size: size),
                      ],
                    ),
                  ),
                  // const Expanded(
                  //   flex: 2,
                  //   child: RotaitingImageContainer(),
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
