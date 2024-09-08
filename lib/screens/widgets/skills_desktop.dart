import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i <= platformItems.length - 1; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: AppColors.paleSlate,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    leading: Image.asset(
                      platformItems[i]["img"],
                      width: 26,
                    ),
                    title: Text(platformItems[i]["title"]),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i <= skillItems.length - 1; i++)
                  Chip(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    label: Text(skillItems[i]["title"]),
                    avatar: Image.asset(skillItems[i]["img"]),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
