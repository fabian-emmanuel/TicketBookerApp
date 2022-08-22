import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_text_widget.dart';
import 'package:booktickets/widgets/layout_divider_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final double marginLeft;
  final bool isColor;
  const TicketsView({Key? key, required this.ticket, required this.marginLeft, required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(184),
      child: Container(
        margin: EdgeInsets.only(left: AppLayout.getHeight(marginLeft)),
        child: Column(
          children: [
            /*
            Responsible for the upper part of the card
             */
            Container(
                decoration: BoxDecoration(
                color: isColor ? Styles.secondary: Styles.boxColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21))
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ColumnTextWidget(firstText: "${ticket['from']['code']}", secondText: "${ticket['from']['name']}", yAlign: CrossAxisAlignment.start, isColor: isColor),
                        Text("${ticket['from']['code']}", style: Styles.headLine3.copyWith(color: isColor?Styles.white:Styles.textColor)),
                        Expanded(child: Container()),
                        ThickContainer(color: isColor?Styles.white:Styles.textColor),
                        Expanded(child: Stack(
                          children: [
                            SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutDivider(isColor: isColor, sections: 6, width: 3),
                            ),
                            Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor?Styles.white:Styles.textColor),)),
                          ]),),
                        ThickContainer(color: isColor?Styles.white:Styles.textColor),
                        Expanded(child: Container()),
                        // ColumnTextWidget(firstText: "${ticket['to']['code']}", secondText: "${ticket['to']['name']}", yAlign: CrossAxisAlignment.start, isColor: isColor),
                        Text("${ticket['to']['code']}", style: Styles.headLine3.copyWith(color: isColor?Styles.white:Styles.textColor))
                      ],
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: AppLayout.getWidth(100),
                            child: Text("${ticket['from']['name']}", style: Styles.headLine4.copyWith(color: isColor?Styles.white:Styles.greyShade5))
                        ),
                        Text("${ticket['flying_time']}", style: Styles.headLine4.copyWith(color: isColor?Styles.white:Styles.greyShade5)),
                        SizedBox(
                            width: AppLayout.getWidth(100),
                            child: Text("${ticket['to']['name']}", textAlign: TextAlign.end, style: Styles.headLine4.copyWith(color: isColor?Styles.white:Styles.greyShade5)))
                      ],
                    ),
                  ],
                ),
            ),
            /*
            Responsible for the next row
             */
            Container(
              color: isColor?Styles.red:Styles.boxColor,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor?Styles.bgPri:Styles.boxColor,
                            borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getHeight(10)), bottomRight: Radius.circular(AppLayout.getHeight(10))
                          )
                        )),
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(12)),
                    child: LayoutDivider(isColor: isColor, sections: 15, width: 5),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isColor?Styles.bgPri:Styles.boxColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)), bottomLeft: Radius.circular(AppLayout.getHeight(10))
                          )
                        )),
                  ),
                ],
              ),
            ),
            /*
            Responsible for the last part of the card
             */
            Container(
              decoration: BoxDecoration(
                color: isColor?Styles.red:Styles.boxColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(isColor ? 21 : 0)),
                    bottomRight: Radius.circular(AppLayout.getHeight(isColor ? 21 : 0))
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      ColumnTextWidget(firstText: "${ticket['date']}", secondText: "Date", yAlign: CrossAxisAlignment.start, isColor: isColor),
                      Expanded(child: Container()),
                      ColumnTextWidget(firstText: "${ticket['departure_time']}", secondText: "Departure Time", yAlign: CrossAxisAlignment.center, isColor: isColor),
                      Expanded(child: Container()),
                      ColumnTextWidget(firstText: "${ticket['number']}", secondText: "Number", yAlign: CrossAxisAlignment.end, isColor: isColor),
                  ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
