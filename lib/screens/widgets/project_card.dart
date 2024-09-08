import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/screens/widgets/text_widget.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: Container(
        height: size.width * 0.10,
        width: size.width * 0.10,
        decoration: BoxDecoration(
          color: AppColors.ebony.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(50),
              child: Image.asset("assets/images/project.jpeg"),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                  margin: const EdgeInsets.all(15),
                  curve: Curves.linear,
                  height: isHovered ? size.width : 0,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.studio,
                  ),
                  duration: const Duration(milliseconds: 400),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Center(
                              child: TextWidget(
                                sSize: size,
                                text: "Web develpement",
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: TextWidget(
                                sSize: size,
                                text: "click to show",
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  void _onHover(bool isHover) {
    setState(() {
      isHovered = isHover;
    });
  }
}
