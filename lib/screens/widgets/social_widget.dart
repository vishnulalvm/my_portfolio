import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constants/colors.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.github,
              color: AppColors.studio,
              size: 15,
            ),
            hoverColor: AppColors.paleSlate,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.figma,
              color: AppColors.studio,
              size: 15,
            ),
            hoverColor: AppColors.paleSlate,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.stackOverflow,
              color: AppColors.studio,
              size: 15,
            ),
            hoverColor: AppColors.paleSlate,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.studio.withOpacity(0.5))),
          child: IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.instagram,
              color: AppColors.studio,
              size: 15,
            ),
            hoverColor: AppColors.paleSlate,
          ),
        ),
      ],
    );
  }
}
