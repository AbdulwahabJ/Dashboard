import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/QuickInvoice_Section/quick_invoice.dart';
import 'package:responsive_dashboard/widgets/all_expensess.dart';
import 'package:responsive_dashboard/widgets/custome_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(height: 24),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
