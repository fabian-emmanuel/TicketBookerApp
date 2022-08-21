import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketsView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(left: AppLayout.getHeight(20)),
        child: Column(
          children: [
            /*
            Responsible for the upper part of the card
             */
            Container(
                decoration: BoxDecoration(
                color: Styles.secondary,
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
                        Text("${ticket['from']['code']}", style: Styles.headLine3.copyWith(color: Styles.white)),
                        Expanded(child: Container()),
                        const ThickContainer(),
                        Expanded(child: Stack(
                          children: [
                            SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate((constraints.constrainWidth()/6).floor(), (index) {
                                      return SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(color: Styles.white)),
                                      );
                                    }),
                                );
                              }
                            ),),
                            Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Styles.white),)),
                          ]),),
                        const ThickContainer(),
                        Expanded(child: Container()),
                        Text("${ticket['to']['code']}", style: Styles.headLine3.copyWith(color: Styles.white))
                      ],
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: AppLayout.getWidth(100),
                            child: Text("${ticket['from']['name']}", style: Styles.headLine4.copyWith(color: Styles.white))),
                        Text("${ticket['flying_time']}", style: Styles.headLine4.copyWith(color: Styles.white)),
                        SizedBox(
                            width: AppLayout.getWidth(100),
                            child: Text("${ticket['to']['name']}", textAlign: TextAlign.end, style: Styles.headLine4.copyWith(color: Styles.white)))
                      ],
                    ),
                  ],
                ),
            ),
            /*
            Responsible for the next row
             */
            Container(
              color: Styles.red,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.bgPri,
                            borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getHeight(10)), bottomRight: Radius.circular(AppLayout.getHeight(10))
                          )
                        )),
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(12)),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/15).floor(), (index) {
                            return SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Styles.white
                              ),
                            ),
                          );
                          }),
                        );
                      }
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Styles.bgPri,
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
                color: Styles.red,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21))
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${ticket['date']}", style: Styles.headLine3.copyWith(color: Styles.white)),
                        const Gap(5),
                        Text("Date", style: Styles.headLine4.copyWith(color: Styles.white)),
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        Text("${ticket['departure_time']}", style: Styles.headLine3.copyWith(color: Styles.white)),
                        const Gap(5),
                        Text("Departure Time", style: Styles.headLine4.copyWith(color: Styles.white)),
                      ],
                    ),
                      Expanded(child: Container()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("${ticket['number']}", style: Styles.headLine3.copyWith(color: Styles.white)),
                        const Gap(5),
                        Text("Number", style: Styles.headLine4.copyWith(color: Styles.white)),
                      ],
                    ),
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
