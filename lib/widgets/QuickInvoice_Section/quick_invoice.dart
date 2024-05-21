import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/QuickInvoice_Section/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/QuickInvoice_Section/quick_invice_form.dart';
import 'package:responsive_dashboard/widgets/QuickInvoice_Section/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
            thickness: 0.3,
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
