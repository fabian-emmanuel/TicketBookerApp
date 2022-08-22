import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/tickets_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/row_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgPri,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Styles.headLine3),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headLine1)
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png")
                        )
                      )
                    )
                  ],
                ),
                const Gap(30),
                AppIconText(icon: FluentSystemIcons.ic_fluent_search_regular, text: "Search", boxColor: Styles.bgSec!),
                const Gap(40),
                const RowTextWidget(bigText: "Upcoming Flights", smallText: "view all"),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((item) => TicketsView(ticket: item, marginLeft: 20, isColor: true)).toList()
            ),
          ),
          const Gap(30),
          Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: const RowTextWidget(bigText: "Hotels", smallText: "view all")),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map((item) => HotelScreen(hotel: item,)).toList()
              ))
        ],
      ),
    );
  }
}
