import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(
                left: AppLayout.getWidth(16),
                right: AppLayout.getWidth(16),
                bottom: AppLayout.getHeight(16),
              ),
              children: [
                Text(
                  'Tickets',
                  style: Styles.headLineStyle1,
                ),
                Gap(
                  AppLayout.getHeight(24),
                ),
                const AppTicketTabs(
                    firstTabName: 'Upcoming', secondTabName: 'Previous'),
                Gap(
                  AppLayout.getHeight(24),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: AppLayout.getHeight(16),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                const SizedBox(height: 1),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(16),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(16),
                    vertical: AppLayout.getHeight(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: 'Flutter DB',
                            secondText: 'Passager',
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstText: '5221 3645869',
                            secondText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      Gap(
                        AppLayout.getHeight(16),
                      ),
                      const AppLayoutBuilderWidget(
                        isColor: false,
                        sections: 10,
                      ),
                      Gap(
                        AppLayout.getHeight(16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AppColumnLayout(
                            firstText: '0055 444 77147',
                            secondText: 'Number of E-ticket',
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      Gap(
                        AppLayout.getHeight(16),
                      ),
                      const AppLayoutBuilderWidget(
                        isColor: false,
                        sections: 10,
                      ),
                      Gap(
                        AppLayout.getHeight(16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 11,
                                  ),
                                  Text(
                                    ' *** 2462',
                                    style: Styles.headLineStyle3,
                                  ),
                                ],
                              ),
                              Gap(
                                AppLayout.getHeight(5),
                              ),
                              Text(
                                'Payment method',
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        AppLayout.getHeight(24),
                      ),
                      bottomRight: Radius.circular(
                        AppLayout.getHeight(24),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    left: AppLayout.getHeight(16),
                    right: AppLayout.getHeight(16),
                  ),
                  padding: EdgeInsets.only(
                    top: AppLayout.getHeight(16),
                    bottom: AppLayout.getHeight(16),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(16),
                      ),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://github.com/martinovovo',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: AppLayout.getHeight(70),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: AppLayout.getHeight(24),
                  ),
                  padding: EdgeInsets.only(
                    left: AppLayout.getHeight(16),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                  ),
                ),
              ],
            ),
            Positioned(
              right: AppLayout.getHeight(24),
              top: AppLayout.getHeight(295),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2),
                ),
                padding: const EdgeInsets.all(3),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              left: AppLayout.getHeight(24),
              top: AppLayout.getHeight(295),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2),
                ),
                padding: const EdgeInsets.all(3),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
