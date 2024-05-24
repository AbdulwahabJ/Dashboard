import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/3Section/custom_dot.dart';

class DotsIndecitor extends StatelessWidget {
  const DotsIndecitor({super.key, required this.currnetPageIndex});
  final int currnetPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: CustomDotIndecitor(isActive: index == currnetPageIndex),
              )),
    );
  }
}
