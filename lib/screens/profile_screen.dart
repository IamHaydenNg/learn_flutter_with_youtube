import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
          ),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getWidth(86),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(16),
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/img_1.png'),
                    ),
                  ),
                ),
                Gap(
                  AppLayout.getHeight(8),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Book Ticket', style: Styles.headLineStyle1),
                    Gap(
                      AppLayout.getHeight(4),
                    ),
                    Text(
                      'New-York',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    Gap(
                      AppLayout.getHeight(8),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFEF4F3),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(3),
                        vertical: AppLayout.getHeight(3),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799),
                            ),
                            child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          Gap(
                            AppLayout.getWidth(5),
                          ),
                          const Text(
                            'Premium status',
                            style: TextStyle(
                                color: Color(0xFF526799),
                                fontWeight: FontWeight.w600),
                          ),
                          Gap(
                            AppLayout.getWidth(5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        debugPrint('Edit Profile');
                      },
                      child: Text(
                        'Edit',
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Gap(
              AppLayout.getHeight(8),
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(20),
                    ),
                  ),
                ),
                Positioned(
                  top: -40,
                  right: -40,
                  child: Container(
                    padding: EdgeInsets.all(
                      AppLayout.getHeight(30),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: const Color(0xFF264CD2), width: 18),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(16),
                    vertical: AppLayout.getHeight(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                      ),
                      Gap(
                        AppLayout.getWidth(16),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You\'v got a new award',
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'You have 95 flights a year',
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(
              AppLayout.getHeight(24),
            ),
            Text(
              'Accumulated miles',
              style: Styles.headLineStyle2,
            ),
            Gap(
              AppLayout.getHeight(24),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(16),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      spreadRadius: 10),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    '192802',
                    style: TextStyle(
                        fontSize: 45,
                        color: Styles.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(
                    AppLayout.getHeight(16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Miles accrued',
                        style: Styles.headLineStyle4.copyWith(fontSize: 16),
                      ),
                      Text(
                        'May 24 2022',
                        style: Styles.headLineStyle4.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  Gap(
                    AppLayout.getHeight(8),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Gap(
                    AppLayout.getHeight(8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: '23 042',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: 'Airline',
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(
                    AppLayout.getHeight(12),
                  ),
                  const AppLayoutBuilderWidget(
                    sections: 12,
                    isColor: false,
                  ),
                  Gap(
                    AppLayout.getHeight(12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: '52 340',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: 'McDonald\'s',
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(
                    AppLayout.getHeight(12),
                  ),
                  const AppLayoutBuilderWidget(
                    sections: 12,
                    isColor: false,
                  ),
                  Gap(
                    AppLayout.getHeight(12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: '23 042',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: 'Los Chore',
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(
              AppLayout.getHeight(16),
            ),
            InkWell(
              onTap: () => debugPrint('Click me'),
              child: Center(
                child: Text(
                  'How to get more miles',
                  style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
