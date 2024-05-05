import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item_header.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({super.key, required this.allExpensessModle});

  final AllExpensessItemModle allExpensessModle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: allExpensessModle.image,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensessModle.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(height: 8),
          Text(
            allExpensessModle.date,
            style: AppStyles.styleReguler14,
          ),
          const SizedBox(height: 16),
          Text(
            allExpensessModle.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    ); // Container
  }
}
