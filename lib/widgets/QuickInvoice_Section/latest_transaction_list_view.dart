import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
//
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrina Andi',
        subTitle: 'Madrina20@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrina Andi',
        subTitle: 'Madrina20@gmail.com'),
    UserInfoModel(
        image: Assets.imagesInfoImage,
        title: 'Madrina Andi',
        subTitle: 'Madrina20@gmail.com'),
  ];
//
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserInfoListTile(model: items[index]));
        },
      ),
    );
  }
}
