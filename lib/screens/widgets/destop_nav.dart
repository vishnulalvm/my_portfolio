import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/nave_items.dart';

class DestopNav extends StatelessWidget {
  const DestopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          const Text(
            'Vishnulal V M',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          for (int i = 0; i <= navTitles.length - 1; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
