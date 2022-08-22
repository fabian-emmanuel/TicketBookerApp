import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/app_tabs_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/row_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgPri,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?", style: Styles.headLine1.copyWith(fontSize: 35)),
          Gap(AppLayout.getHeight(20)),
          const AppTabsWidget(leftText: "Airline Tickets", rightText: "Hotels"),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_takeoff_outlined, text: "Departure", boxColor: Styles.boxColor!),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_land_outlined, text: "Arrival", boxColor: Styles.boxColor!),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                color: Styles.secondary,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
            ),
            child: Center(child: Text("Find Tickets", style: Styles.headLine3.copyWith(color: Styles.white)))
          ),
          Gap(AppLayout.getHeight(50)),
          const RowTextWidget(bigText: "Upcoming Flights", smallText: "view all"),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10), vertical: AppLayout.getWidth(10)),
                height: AppLayout.getHeight(300),
                width: size.width*0.42,
                decoration: BoxDecoration(
                  color: Styles.secondary,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Styles.greyShade5,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(160),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/sit.jpg"),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text("20% Discount on early booking of this Flight. Don't miss out", style: Styles.headLine3.copyWith(color: Styles.white)),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getWidth(20)),
                        width: size.width*0.44,
                        height: AppLayout.getHeight(140),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(25)),
                          color: Styles.bgSec,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount for Survey", style: Styles.headLine3.copyWith(color: Styles.secondary)),
                            Gap(AppLayout.getHeight(15)),
                            Text("Take our survey and get discount", style: Styles.headLine3.copyWith(color: Styles.secondary)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: AppLayout.getWidth(18),color: Styles.greyShade5),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getWidth(20)),
                    width: size.width*0.44,
                    height: AppLayout.getHeight(140),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(25)),
                      color: Styles.bgSec,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount for Survey", style: Styles.headLine3.copyWith(color: Styles.secondary)),
                        Gap(AppLayout.getHeight(15)),
                        Text("Take our survey and get discount", style: Styles.headLine3.copyWith(color: Styles.secondary)),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
        
      ),
    );
  }
}
