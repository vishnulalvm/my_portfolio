import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'dart:math' as math;

class RotaitingImageContainer extends StatefulWidget {
  const RotaitingImageContainer({super.key});

  @override
  State<RotaitingImageContainer> createState() =>
      _RotaitingImageContainerState();
}

class _RotaitingImageContainerState extends State<RotaitingImageContainer> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHover = false;
        });
      },
      child: AnimatedContainer(
        transform: Matrix4.rotationZ(isHover ? 0 : math.pi / 36),
        duration: const Duration(milliseconds: 300),
        height: size.width * 0.24,
        width: size.width * 0.24,
        decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/profile.jpg")),
          border: Border.all(
            color: AppColors.studio,
            width: 1.2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
