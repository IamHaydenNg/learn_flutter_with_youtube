import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          const AppTicketTabs(
              firstTabName: 'Airline tickets', secondTabName: 'Hotels'),
          Gap(
            AppLayout.getHeight(16),
          ),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(
            AppLayout.getHeight(16),
          ),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(
            AppLayout.getHeight(24),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(16),
            ),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(10),
              ),
            ),
            child: Center(
              child: Text(
                'Find tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(32),
          ),
          const AppDoubleTextWidget(
              title: 'Upcoming Flight', subtitle: 'View all'),
          Gap(
            AppLayout.getHeight(16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (size.width * 0.5) - 20,
                height: size.height * 0.46,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(24),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade200, blurRadius: 1),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/sit.jpg'),
                        ),
                      ),
                    ),
                    Gap(
                      AppLayout.getHeight(8),
                    ),
                    Text(
                      '20% discount on the early boking of this flight, Don\'t miss',
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: (size.width * 0.5) - 36,
                        height: size.height * 0.23 - 16,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(16),
                          vertical: AppLayout.getHeight(16),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(24),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            const Gap(8),
                            Text(
                              'Take the survey about services and get discount',
                              style: Styles.textStyle
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: const Color(0xFF189999),
                              ),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(
                    AppLayout.getHeight(24),
                  ),
                  Container(
                    width: (size.width * 0.5) - 36,
                    height: size.height * 0.23 - 16,
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(16),
                      vertical: AppLayout.getHeight(16),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(16),
                        ),
                        color: Colors.red),
                    child: Center(
                      child: Text(
                        'Thank you!',
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
