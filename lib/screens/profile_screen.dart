import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_text_widget.dart';
import 'package:booktickets/widgets/layout_divider_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgPri,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getWidth(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(100),
                width: AppLayout.getWidth(100),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/img_1.png"))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLine1),
                  Gap(AppLayout.getHeight(5)),
                  Text("New-York", style: Styles.headLine4),
                  Gap(AppLayout.getHeight(5)),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: Styles.white),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Styles.secondary),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Styles.white,
                            size: AppLayout.getHeight(18),
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text("Premium Status",
                            style: Styles.headLine4
                                .copyWith(color: Styles.secondary))
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: () => print("You are tapped"),
                      child: Text("Edit", style: Styles.textLinkStyle))
                ],
              )
            ],
          ),
          Gap(AppLayout.getWidth(10)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getWidth(10)),
          Stack(children: [
            Container(
              height: AppLayout.getHeight(100),
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(20),
                  horizontal: AppLayout.getWidth(20)),
              decoration: BoxDecoration(
                  color: Styles.secondary,
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(20)))),
            ),
            Positioned(
              right: -45,
              top: -40,
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: AppLayout.getWidth(18),color: Styles.primary),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: AppLayout.getHeight(30),
                    backgroundColor: Styles.white,
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.secondary,
                      size: AppLayout.getHeight(40),
                    ),
                  ),
                  Gap(AppLayout.getWidth(20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "You've got a new award",
                        style: Styles.headLine2.copyWith(color: Styles.white),
                      ),
                      Gap(AppLayout.getWidth(5)),
                      Text(
                        "You have 150 flights in a year",
                        style: Styles.headLine3.copyWith(color: Styles.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
          Gap(AppLayout.getWidth(25)),
          Text("Accumulated Miles", style: Styles.headLine2),
          Gap(AppLayout.getWidth(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
              color: Styles.bgSec,
              boxShadow: [
                BoxShadow(
                  color: Styles.greyShade5,
                  blurRadius: 1 ,
                  spreadRadius: 1,
                )
              ]
            ),
            child: Column(
              children: [
                Text("137892", style: TextStyle(fontSize: 45, fontWeight: FontWeight.w600, color: Styles.textColor),),
                Gap(AppLayout.getWidth(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles Accrued", style: Styles.headLine3),
                    Text("23 August 2022", style: Styles.headLine3)
                  ],
                ),
                Gap(AppLayout.getWidth(15)),
                const LayoutDivider(isColor: true, sections: 15, width: 5),
                Gap(AppLayout.getWidth(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnTextWidget(firstText: "23 051", secondText: "Miles", yAlign: CrossAxisAlignment.start, isColor: false),
                    ColumnTextWidget(firstText: "Airline CO", secondText: "Recieved From", yAlign: CrossAxisAlignment.end, isColor: false),
                  ],
                ),
                Gap(AppLayout.getWidth(15)),
                const LayoutDivider(isColor: true, sections: 15, width: 5),
                Gap(AppLayout.getWidth(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnTextWidget(firstText: "230", secondText: "Miles", yAlign: CrossAxisAlignment.start, isColor: false),
                    ColumnTextWidget(firstText: "McDonalds", secondText: "Recieved From", yAlign: CrossAxisAlignment.end, isColor: false),
                  ],
                ),
                Gap(AppLayout.getWidth(15)),
                const LayoutDivider(isColor: true, sections: 15, width: 5),
                Gap(AppLayout.getWidth(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnTextWidget(firstText: "43 551", secondText: "Miles", yAlign: CrossAxisAlignment.start, isColor: false),
                    ColumnTextWidget(firstText: "Exuma", secondText: "Recieved From", yAlign: CrossAxisAlignment.end, isColor: false),
                  ],
                ),
                Gap(AppLayout.getWidth(15)),
              ],
            ),
          ),
          Gap(AppLayout.getWidth(20)),
          Center(child: InkWell(
            onTap: () => print("you tapped me!"),
              child: Text("How to get more miles", style: Styles.textLinkStyle.copyWith(fontSize: 20)))),
        ],
      ),
    );
  }
}
