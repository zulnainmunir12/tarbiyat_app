
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarbiyat_app/core/services/navigation_services.dart';
import 'package:tarbiyat_app/locator.dart';
import 'package:tarbiyat_app/ui/shared/app_color.dart';
import 'package:tarbiyat_app/ui/shared/font_size.dart';
import 'package:tarbiyat_app/widget/horizontal_spacing.dart';
import 'package:tarbiyat_app/widget/vertical_spacing.dart';

class MainDrawer extends StatefulWidget {
  _MainDrawer createState() => _MainDrawer();
}

class _MainDrawer extends State<MainDrawer> {
  final NavigationService _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(16.0),
              color: AppColor.primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalSpacing(height: 0.02),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppColor.whiteColor),
                        child: Center(
                          child: Text(
                            'U',
                            style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: FontSize.xxxxxxl,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Usman Sukhera',
                    style: TextStyle(
                        fontSize: FontSize.l,
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Usman1sukhera@gmail.com',
                    style: TextStyle(
                      fontSize: FontSize.l,
                      color: AppColor.whiteColor,
                    ),
                  )
                ],
              )),
          Flexible(
              child: Container(
                margin: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      // onTap: () => _navigationService
                      //     .navigateTo(NavigationRouter.myOrderView),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info,
                            color: AppColor.primaryColor,
                            size: 28,
                          ),
                          HorizontalSpacing(width: 0.08),
                          Text(
                            'About US',
                            style: TextStyle(
                                color: AppColor.darkGrey, fontSize: FontSize.xxl),
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacing(height: 0.03),
                    InkWell(
                      // onTap: () =>
                      //     _navigationService.navigateTo(NavigationRouter.profile),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: AppColor.primaryColor,
                            size: 28,
                          ),
                          HorizontalSpacing(width: 0.08),
                          Text(
                            'Ads Free Version',
                            style: TextStyle(
                                color: AppColor.darkGrey, fontSize: FontSize.xxl),
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacing(height: 0.03),
                    InkWell(
                      // onTap: () => _navigationService
                      //     .navigateTo(NavigationRouter.walletView),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            color: AppColor.primaryColor,
                            size: 28,
                          ),
                          HorizontalSpacing(width: 0.08),
                          Text(
                            'Certificates',
                            style: TextStyle(
                                color: AppColor.darkGrey, fontSize: FontSize.xxl),
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacing(height: 0.03),
                    InkWell(
                      // onTap: () => _navigationService
                      //     .navigateTo(NavigationRouter.addAddress),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: AppColor.primaryColor,
                            size: 28,
                          ),
                          HorizontalSpacing(width: 0.08),
                          Text(
                            'Share',
                            style: TextStyle(
                                color: AppColor.darkGrey, fontSize: FontSize.xxl),
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacing(height: 0.03),
                    InkWell(
                      // onTap: () => _navigationService
                      //     .navigateTo(NavigationRouter.notificationView),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none_rounded,
                            color: AppColor.primaryColor,
                            size: 28,
                          ),
                          HorizontalSpacing(width: 0.08),
                          Text(
                            'Follow us',
                            style: TextStyle(
                                color: AppColor.darkGrey, fontSize: FontSize.xxl),
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacing(height: 0.03),
                    InkWell(
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: AppColor.primaryColor,
                            size: 28,
                          ),
                          HorizontalSpacing(width: 0.08),
                          Text(
                            'Feedback',
                            style: TextStyle(
                                color: AppColor.darkGrey, fontSize: FontSize.xxl),
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacing(height: 0.03),
                    InkWell(
                      // onTap: () => _navigationService
                      //     .navigateTo(NavigationRouter.suggestScreen),
                      child: Row(
                        children: [
                          Icon(
                            Icons.wb_incandescent_outlined,
                            color: AppColor.primaryColor,
                            size: 28,
                          ),
                          HorizontalSpacing(width: 0.08),
                          Text(
                            'Setting',
                            style: TextStyle(
                                color: AppColor.darkGrey, fontSize: FontSize.xxl),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
