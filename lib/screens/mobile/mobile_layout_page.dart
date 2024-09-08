import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/styles.dart';
import 'package:my_portfolio/screens/tablet/tablet_layout_page.dart';
import 'package:my_portfolio/screens/widgets/count_container_widget.dart';
import 'package:my_portfolio/screens/widgets/drawer_mobile.dart';
import 'package:my_portfolio/screens/widgets/header_text_widget.dart';
import 'package:my_portfolio/screens/widgets/mobile_nav.dart';
import 'package:my_portfolio/screens/widgets/myservices_widget.dart';
import 'package:my_portfolio/screens/widgets/rotaiting_image_widget.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const DrawerMobile(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MobileNav(
                ontap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
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
                ],
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    CountContainerWidget(
                      size: size,
                      text1: "14",
                      text2: "years",
                      text3: "Expirience",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: AppColors.paleSlate,
                      indent: size.width * 0.05,
                      endIndent: size.width * 0.05,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CountContainerWidget(
                        size: size,
                        text1: "14",
                        text2: "years",
                        text3: "Expirience"),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: AppColors.paleSlate,
                      indent: size.width * 0.05,
                      endIndent: size.width * 0.05,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CountContainerWidget(
                        size: size,
                        text1: "14",
                        text2: "years",
                        text3: "Expirience"),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: AppColors.paleSlate,
                      indent: size.width * 0.05,
                      endIndent: size.width * 0.05,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CountContainerWidget(
                        size: size,
                        text1: "14",
                        text2: "years",
                        text3: "Expirience"),
                  ],
                ),
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
      ),
    );
  }
}
