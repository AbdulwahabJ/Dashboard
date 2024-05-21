import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/QuickInvoice_Section/custom_button.dart';
import 'package:responsive_dashboard/widgets/QuickInvoice_Section/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      children: const [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    titl: 'Customer name', hint: 'type customer name')),
            SizedBox(width: 16),
            Expanded(
                child: TitleTextField(
                    titl: 'Customer name', hint: 'type customer name')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    titl: 'Customer name', hint: 'type customer name')),
            SizedBox(width: 16),
            Expanded(
                child: TitleTextField(
                    titl: 'Customer name', hint: 'type customer name')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                  text: 'Add more detils',
                  color: Color(0xffFAFAFA),
                  textColor: Color(0xFF4DB7F2)),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton(color: Color(0xFF4DB7F2))),
          ],
        ),
      ],
    );
  }
}
