import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RowTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const RowTextWidget({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLine2),
        InkWell(
            onTap: () => print("You tapped Me!"),
            child: Text(smallText, style: Styles.textLinkStyle))
      ],
    );
  }
}
