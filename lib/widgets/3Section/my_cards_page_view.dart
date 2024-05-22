import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/3Section/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const IntrinsicHeight(child: MyCard());
      },
    );
  }
}