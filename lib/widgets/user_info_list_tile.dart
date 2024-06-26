import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.model,
  });

  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(model.image),
        title: Text(model.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(model.subTitle, style: AppStyles.styleReguler12),
      ),
    );
  }
}
