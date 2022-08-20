import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/tickets_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png")
                        )
                      )
                    )
                  ],
                ),
                const Gap(30),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Styles.bgSec,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(FluentSystemIcons.ic_fluent_search_regular, color: Styles.iconColor),
                          const Gap(10),
                          Text("Search", style: Styles.headLine3)
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headLine2),
                    InkWell(
                        onTap: () => print("You tapped Me!"),
                        child: Text("view all", style: Styles.textLinkStyle))
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((item) => TicketsView(ticket: item)).toList()
            ),
          ),
          const Gap(30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headLine2),
                InkWell(
                    onTap: () => print("You tapped Me!"),
                    child: Text("view all", style: Styles.textLinkStyle))
              ],
            ),
          ),
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
