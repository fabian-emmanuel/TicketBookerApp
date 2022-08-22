import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class LayoutDivider extends StatelessWidget {
  final bool isColor;
  final int sections;
  final double width;
  const LayoutDivider({Key? key, required this.isColor, required this.sections, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Flex(
            direction: Axis.horizontal,
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate((constraints.constrainWidth()/sections).floor(), (index) {
              return SizedBox(
                width: width,
                height: 1,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: isColor?Styles.white:Styles.textColor)),
              );
            }),
          );
        }
    );
  }
}
