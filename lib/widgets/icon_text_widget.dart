import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color boxColor;
  const AppIconText({Key? key, required this.icon, required this.text, required this.boxColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
      decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
      ),
      child: Row(
        children: [
          Row(
            children: [
              Icon(icon, color: Styles.iconColor),
              Gap(AppLayout.getWidth(15)),
              Text(text, style: Styles.headLine3)
            ],
          ),
        ],
      ),
    );
  }
}
