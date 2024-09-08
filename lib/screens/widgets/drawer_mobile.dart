import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nave_items.dart';

class DrawerMobile extends StatelessWidget {
  
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppColors.studio,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 20,bottom: 30),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                  
                }, icon: const Icon(Icons.close),),
              ),
            ),
            for (int i = 0; i < navIcons.length - 1; i++)
              ListTile(

                hoverColor: AppColors.hippieBlue,
                contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
                leading: Icon(
                  navIcons[i],
                  color: Colors.white,
                ),
                title: Text(
                  navTitles[i],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
          ],
        ),
      );
  }
}