import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.43,
      height: 340,
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Styles.secondary,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Styles.primary,
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel['image']}"))
            ),
          ),
          const Gap(10),
          Text("${hotel['place']}", style: Styles.headLine3.copyWith(color: Styles.iconColor)),
          const Gap(6),
          Text("${hotel['destination']}", style: Styles.headLine3.copyWith(color: Styles.bgSec)),
          const Gap(6),
          Text("\$${hotel['price']}/Night", style: Styles.headLine3.copyWith(color: Styles.iconColor))
        ],
      ),
    );
  }
}
