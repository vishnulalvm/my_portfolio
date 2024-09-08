import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/screens/widgets/project_card.dart';

class CustomTabbar extends StatelessWidget {
  final TabController tabController;
  const CustomTabbar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        color: AppColors.ebony,
        borderRadius: BorderRadiusDirectional.circular(20),
      ),
      child: TabBar(
          controller: tabController,
          labelColor: Colors.white,
          dividerColor: Colors.transparent,
          unselectedLabelColor: AppColors.capeCod,
          physics: const BouncingScrollPhysics(),
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          labelPadding: const EdgeInsets.symmetric(horizontal: 20),
          labelStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold
          ),
          indicator: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          tabs: const [
            Tab(
              text: 'All',
            ),
            Tab(
              text: 'Apps',
            ),
            Tab(
              text: 'Brand',
            ),
            Tab(
              text: 'UI UX',
            ),
          ]),
    );
  }
}

class CustomTabbarView extends StatelessWidget {
  final TabController tabController;
  const CustomTabbarView({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return TabBarView(
      controller: tabController,
      children: [
        AllProject(size: size),
        AllProject(size: size),
        AllProject(size: size),
        AllProject(size: size),
      ],
    );
  }
}

class AllProject extends StatelessWidget {
  final Size size;
  const AllProject({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(horizontal: size.width*0.015),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 3 / 3,

      ),
      children: const [
        ProjectCard(),
        ProjectCard(),
        ProjectCard(),
        ProjectCard(),

      ],
    );
  }
}
