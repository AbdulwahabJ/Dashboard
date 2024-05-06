import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item.dart';

class AllExpensessItemListView extends StatelessWidget {
  const AllExpensessItemListView({super.key});

  static List<AllExpensessItemModle> items = [
    const AllExpensessItemModle(
      image: Assets.imagesIncome,
      title: 'Balanc',
      date: 'Apr 20 2023',
      price: r'$20,50',
    ),
    const AllExpensessItemModle(
      image: Assets.imagesIncome,
      title: 'income',
      date: 'Apr 20 2023',
      price: r'$20,50',
    ),
    const AllExpensessItemModle(
      image: Assets.imagesIncome,
      title: 'Expensess',
      date: 'Apr 20 2023',
      price: r'$20,50',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
// children: items.map((e) => ALLExpensessItem(itemModel: e)). tolist(),
      children: items.asMap().entries.map((e) {
        //
        int index = e.key;
        var item = e.value;
        //
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensessItem(allExpensessModle: item),
            ),
          );
        } else {
          return Expanded(child: AllExpensessItem(allExpensessModle: item));
        }
      }).toList(),
    );
    // return Row(
    //   children: items
    //       .map((e) => Expanded(
    //               child: Padding(
    //             padding: const EdgeInsets.only(right: 8.0),
    //             child: AllExpensessItem(allExpensessModle: e),
    //           )))
    //       .toList(),
    // );

    // ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   scrollDirection: Axis.horizontal,
    //   itemBuilder: (context, index) {
    //     return AllExpensessItem(
    //       allExpensessModle: items[index],
    //     );
    //   },
    // );
  }
}
