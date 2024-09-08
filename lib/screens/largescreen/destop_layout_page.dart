import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/styles.dart';
import 'package:my_portfolio/screens/widgets/count_container_widget.dart';
import 'package:my_portfolio/screens/widgets/custom_tabbar.dart';
import 'package:my_portfolio/screens/widgets/destop_nav.dart';
import 'package:my_portfolio/screens/widgets/header_text_widget.dart';
import 'package:my_portfolio/screens/widgets/myservices_widget.dart';
import 'package:my_portfolio/screens/widgets/rotaiting_image_widget.dart';
import 'package:my_portfolio/screens/widgets/skills_desktop.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
              const DestopNav(),
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          HeaderTextWidget(size: size),
                          const SizedBox(height: 20),
                          SocialLarge(size: size),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: RotaitingImageContainer(),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountContainerWidget(
                      size: size,
                      text1: "01",
                      text2: "Expirienced",
                      text3: "Developer",
                    ),
                    CountContainerWidget(
                        size: size,
                        text1: "02",
                        text2: "Major",
                        text3: "Projects"),
                    CountContainerWidget(
                        size: size,
                        text1: "08",
                        text2: "Mini",
                        text3: "Projects"),
                    CountContainerWidget(
                        size: size,
                        text1: "04",
                        text2: "UIUX",
                        text3: "Project"),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.12,
              ),
              Container(
                color: AppColors.ebony,
                padding: EdgeInsets.symmetric(vertical: size.width * 0.05),
                child: Column(
                  children: [
                    GradientText(
                      "My Quality Services",
                      colors: const [
                        AppColors.studio,
                        AppColors.paleSlate,
                      ],
                      style: TextStyle(
                          fontSize: size.width * 0.030,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'We put your ideas and thus your wishes in the form of a unique web project that inspires you and you customers.',
                      style: TextStyle(
                          fontSize: size.width * 0.012,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    MyservicesWidget(
                      size: size,
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                padding: EdgeInsets.symmetric(vertical: size.height * 0.05),
                child: Column(
                  children: [
                    GradientTextWidget(
                      fsize: 28,
                      size: size,
                      text1: "My Resent Works",
                    ),
                    CustomTabbar(
                      tabController: tabController,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height,
                child: CustomTabbarView(tabController: tabController),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: size.width,
                color: AppColors.ebony,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "what i can do",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const SkillsDesktop(),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
