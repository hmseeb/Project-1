import 'package:barcode_widget/barcode_widget.dart';
import 'package:brain_bite/utils/app_layout.dart';
import 'package:brain_bite/utils/info_list.dart';
import 'package:brain_bite/views/single_ticket.dart';
import 'package:brain_bite/widgets/selector.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(25)),
            margin: EdgeInsets.only(top: AppLayout.getHeight(40)),
            child: Column(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Tickets',
                    style: Styles.headLineStyle1.copyWith(fontSize: 40),
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                selector(size, 'Upcoming', 'Previous'),
                Gap(AppLayout.getHeight(40)),
                Column(
                  children: ticketList
                      .map((ticket) => Ticket(
                          ticket: ticket,
                          topColor: Colors.white,
                          bottomColor: Colors.white,
                          containerColor: Colors.cyan,
                          flightColor: Colors.cyan,
                          textColor: Colors.black))
                      .toList(),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(AppLayout.getHeight(20)),
                  margin: EdgeInsets.only(
                      left: AppLayout.getHeight(20),
                      right: AppLayout.getHeight(20)),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(10)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(12)),
                      child: BarcodeWidget(
                        data: 'Haseeb',
                        drawText: false,
                        barcode: Barcode.code128(),
                        height: 70,
                        width: AppLayout.getWidth(340),
                      ),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Column(children: [
                  Ticket(
                    ticket: ticketList.first,
                    bottomColor: Styles.orangeColor,
                    topColor: const Color(0xFF526799),
                    textColor: Colors.white,
                  )
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
