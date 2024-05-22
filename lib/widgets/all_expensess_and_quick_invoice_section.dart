import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/QuickInvoice_Section/quick_invoice.dart';
import 'package:responsive_dashboard/widgets/all_expensess.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
        SizedBox(height: 24),
      ],
    );
  }
}
