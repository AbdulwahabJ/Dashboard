import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/QuickInvoice_Section/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.titl, required this.hint});

  final String titl, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Customer name',
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
