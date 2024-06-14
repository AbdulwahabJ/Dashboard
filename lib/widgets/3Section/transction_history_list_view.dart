import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/models/transction_model.dart';
import 'package:responsive_dashboard/widgets/3Section/transaction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});

  static const items = [
    TransctionModel(
      title: ' Landing page',
      date: '13 Apr, 2023',
      amount: r'$20,38',
      isWithdrawal: false,
    ),
    TransctionModel(
      title: ' Landing page',
      date: '13 Apr, 2023',
      amount: r'$20,38',
      isWithdrawal: false,
    ),
    TransctionModel(
      title: ' Landing page',
      date: '13 Apr, 2023',
      amount: r'$20,38',
      isWithdrawal: false,
    ),
    TransctionModel(
      title: ' Landing page',
      date: '13 Apr, 2023',
      amount: r'$20,38',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}
