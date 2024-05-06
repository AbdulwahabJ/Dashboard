import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/widgets/active_and_in_active_all_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.allExpensessModle, required this.isSelected});

  final AllExpensessItemModle allExpensessModle;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(allExpensessModle: allExpensessModle)
        : InActiveAllExpensessItem(
            allExpensessModle: allExpensessModle); // Container
  }
}
