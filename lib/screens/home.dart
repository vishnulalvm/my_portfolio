import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/largescreen/destop_layout_page.dart';
import 'package:my_portfolio/screens/mobile/mobile_layout_page.dart';
import 'package:my_portfolio/screens/tablet/tablet_layout_page.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:  (context, constraints){
        if(constraints.maxWidth>950){
          return const DesktopLayout();
        }else if(constraints.maxWidth>550){
          return const TabletLayout();
        }else{
          return const MobileLayout();
        }
      }
      
      );
  }
}