import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTabsWidget extends StatelessWidget {
  final String leftText, rightText;
  const AppTabsWidget({Key? key, required this.leftText, required this.rightText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3),),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: Styles.bgSec,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(10),),
              width: size.width*0.44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                color: Styles.boxColor,
              ),
              child: Center(child: Text(leftText, style: Styles.textStyle)),
            ),
            Container(
                padding: EdgeInsets.all(AppLayout.getHeight(10),),
                width: size.width*0.44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                  color: Styles.bgSec,
                ),
                child: Center(child: Text(rightText, style: Styles.textStyle))),
          ],
        ),
      ),
    );
  }
}
