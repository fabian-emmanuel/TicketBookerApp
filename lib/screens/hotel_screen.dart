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
      height: AppLayout.getHeight(340),
      margin: EdgeInsets.only(left: AppLayout.getHeight(20)),
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(10), vertical: AppLayout.getHeight(10)),
      decoration: BoxDecoration(
        color: Styles.secondary,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(20))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(190),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
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
