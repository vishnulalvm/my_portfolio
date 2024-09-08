import 'package:flutter/material.dart';

class MobileNav extends StatelessWidget {
  final VoidCallback ontap;
  const MobileNav({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          const SizedBox(width: 10),
          const Spacer(),
          IconButton(
            onPressed: ontap,
            icon: const Icon(
              Icons.menu,
              size: 25,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
