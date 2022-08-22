import 'dart:ffi';

import 'package:booktickets/screens/tickets_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/app_tabs_widget.dart';
import 'package:booktickets/widgets/column_text_widget.dart';
import 'package:booktickets/widgets/layout_divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgPri,
      body: Stack(
        children: [
          ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets", style: Styles.headLine1.copyWith(fontSize: 35)),
            Gap(AppLayout.getHeight(20)),
            const AppTabsWidget(leftText: "Upcoming", rightText: "Previous"),
            Gap(AppLayout.getHeight(20)),
            TicketsView(ticket: ticketList[0], marginLeft: 0, isColor: false),
            const SizedBox(height: 1),
            Container(
              color: Styles.boxColor,
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getWidth(20)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnTextWidget(firstText: "Flutter DB", secondText: "Passenger", yAlign: CrossAxisAlignment.start, isColor: false),
                      ColumnTextWidget(firstText: "5446-2434", secondText: "Passport", yAlign: CrossAxisAlignment.end, isColor: false)
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const LayoutDivider(isColor: false, sections: 15, width: 5),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnTextWidget(firstText: "0012 3222 3541", secondText: "E-ticket Number", yAlign: CrossAxisAlignment.start, isColor: false),
                      ColumnTextWidget(firstText: "B2SD34E", secondText: "Booking Code", yAlign: CrossAxisAlignment.end, isColor: false)
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const LayoutDivider(isColor: false, sections: 15, width: 5),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/visa.png", scale: 10),
                              Text(" *** 1234", style: Styles.headLine3.copyWith(color: Styles.textColor))
                            ],
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text("Payment Method", style: Styles.headLine4.copyWith(color: Styles.greyShade5))
                        ],
                      ),
                      const ColumnTextWidget(firstText: "\$240.50", secondText: "Price", yAlign: CrossAxisAlignment.end, isColor: false)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 1),
            /*
            Barcode Section
             */
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
              decoration: BoxDecoration(
                color: Styles.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(20)),
                    bottomRight: Radius.circular(AppLayout.getHeight(20))),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: "https://github.com/fabian-emmanuel",
                  drawText: false,
                  color: Styles.textColor,
                  width: double.infinity,
                  height: 100,
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            TicketsView(ticket: ticketList[0], marginLeft: 0, isColor: true)
          ],
        ),
        ],
      ),
    );
  }
}
