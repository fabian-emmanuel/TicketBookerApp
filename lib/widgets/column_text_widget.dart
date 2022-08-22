import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ColumnTextWidget extends StatelessWidget {
  final String firstText, secondText;
  final CrossAxisAlignment yAlign;
  final bool isColor;
  const ColumnTextWidget({Key? key, required this.firstText, required this.secondText, required this.yAlign, required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: yAlign,
      children: [
        Text(firstText, style: Styles.headLine3.copyWith(color: isColor?Styles.white:Styles.textColor)),
        Gap(AppLayout.getHeight(5)),
        Text(secondText, style: Styles.headLine4.copyWith(color: isColor?Styles.white:Styles.greyShade5)),
      ],
    );
  }
}
