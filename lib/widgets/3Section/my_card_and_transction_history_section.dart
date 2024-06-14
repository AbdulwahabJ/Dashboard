import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/3Section/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/3Section/transaction_history.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class MyCardAndTransctionHistory extends StatelessWidget {
  const MyCardAndTransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
