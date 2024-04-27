import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel('Dashboard', Assets.imagesDashboard),
    DrawerItemModel('My Transaction', Assets.imagesMyTransacktion),
    DrawerItemModel('Statistics', Assets.imagesStatistics),
    DrawerItemModel('Wallet Account', Assets.imagesWallet),
    DrawerItemModel('My Investments', Assets.imagesSetting),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
            image: Assets.imagesInfoImage,
            title: "Abdulwahab",
            subTitle: "wahab@gmail.com",
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: DrawerItem(drawerItemModel: items[index]),
              );
            },
          )
        ],
      ),
    );
  }
}
