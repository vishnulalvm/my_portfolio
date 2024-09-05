import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/screens/widgets/text_widget.dart';

class MyservicesWidget extends StatefulWidget {
  final Size size;
  const MyservicesWidget({super.key, required this.size});

  @override
  State<MyservicesWidget> createState() => _MyservicesWidgetState();
}

class _MyservicesWidgetState extends State<MyservicesWidget> {
  List<bool> _isHover = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return MouseRegion(
            onEnter: (_) => setState(() => _isHover[index] = true),
            onExit: (_) => setState(() => _isHover[index] = false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              curve: Curves.easeInOut,
              margin:
                  EdgeInsets.symmetric(horizontal: widget.size.width * 0.04),
              // height:widget.size.width >600? widget.size.height * 0.18:widget.size.height * 0.28,
              width: widget.size.width,
              decoration: BoxDecoration(
                color: _isHover[index] ? null : Colors.transparent,
                border: Border.all(
                  color: _isHover[index]
                      ? AppColors.studio.withOpacity(0.5)
                      : Colors.transparent,
                ),
                gradient: _isHover[index]
                    ? const LinearGradient(colors: [
                        AppColors.studio,
                        AppColors.ebony,
                      ])
                    : null,
              ),
              child: widget.size.width > 600
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          sSize: widget.size,
                          text: "${index + 1}",
                          size: 28,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: widget.size.height * 0.04,
                        ),
                        TextWidget(
                          sSize: widget.size,
                          text: "Designing Banded Logos",
                          size: 28,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: widget.size.height * 0.08,
                        ),
                        Flexible(
                          child: TextWidget(
                            sSize: widget.size,
                            text:
                                "Designing Banded Logos The Flutter DevTools debugger and profiler on Chrome is available ",
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                        FaIcon(
                          _isHover[index]
                              ? FontAwesomeIcons.arrowTrendUp
                              : FontAwesomeIcons.arrowTrendDown,
                          color:
                              _isHover[index] ? Colors.white : AppColors.studio,
                        )
                      ],
                    )
                  : Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          sSize: widget.size,
                          text: "${index + 1}",
                          size: 22,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: widget.size.height * 0.04,
                        ),
                        TextWidget(
                          sSize: widget.size,
                          text: "Designing Banded Logos",
                          size: 18,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: widget.size.height * 0.08,
                        ),
                        Wrap(direction: Axis.horizontal,
                          
                          children: [
                            TextWidget(
                              alignment: TextAlign.center,
                              sSize: widget.size,
                              text:
                                  "Designing Banded Logos The Flutter DevTools debugger and profiler on Chrome is available ",
                              size: 14,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        FaIcon(
                          _isHover[index]
                              ? FontAwesomeIcons.arrowTrendUp
                              : FontAwesomeIcons.arrowTrendDown,
                          color:
                              _isHover[index] ? Colors.white : AppColors.studio,
                        )
                      ],
                    ),
            ),
          );
        });
  }
}
