import 'package:brain_bite/utils/app_layout.dart';
import 'package:brain_bite/utils/styles.dart';
import 'package:brain_bite/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Ticket extends StatelessWidget {
  const Ticket(
      {super.key,
      required this.ticket,
      required this.topColor,
      this.containerColor,
      required this.bottomColor,
      this.flightColor,
      required this.textColor});
  final Map<String, dynamic> ticket;
  final Color topColor;
  final Color bottomColor;
  final Color? containerColor;
  final Color? flightColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.80,
      height: AppLayout.getHeight(200),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: topColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
            ),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: Styles.headLineStyle3.copyWith(color: textColor),
                    ),
                    Expanded(child: Container()),
                    ThickContainer(
                      containerColor: containerColor ?? Colors.white,
                    ),
                    Expanded(
                        child: Stack(
                      children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              // print(constraints.constrainWidth());
                              return Flex(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                direction: Axis.horizontal,
                                children: List.generate(
                                  (constraints.constrainWidth() / 8).floor(),
                                  (index) => Text('-',
                                      style: TextStyle(color: textColor)),
                                ),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                              angle: 1.6,
                              child: Icon(
                                Icons.flight,
                                color: flightColor ?? Colors.white,
                              )),
                        ),
                      ],
                    )),
                    ThickContainer(
                      containerColor: containerColor ?? Colors.white,
                    ),
                    Expanded(child: Container()),
                    Text(
                      ticket['to']['code'],
                      style: Styles.headLineStyle3.copyWith(color: textColor),
                    ),
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket['from']['name'],
                      style: Styles.headLineStyle4.copyWith(color: textColor),
                    ),
                    Text(
                      ticket['flying_time'],
                      style: Styles.headLineStyle4.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ticket['to']['name'],
                      style: Styles.headLineStyle4.copyWith(color: textColor),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: bottomColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),
              ),
            ),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(10),
                      height: AppLayout.getHeight(20),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: textColor,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            direction: Axis.horizontal,
                            children: List.generate(
                                (constraints.maxWidth / 15).floor(),
                                (index) => Text(
                                      '-',
                                      style: TextStyle(color: textColor),
                                    )),
                          );
                        },
                      ),
                    )),
                    SizedBox(
                      width: AppLayout.getWidth(10),
                      height: AppLayout.getHeight(20),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: textColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket['date'],
                        style: Styles.headLineStyle3.copyWith(color: textColor),
                      ),
                      Text(
                        ticket['time'],
                        style: Styles.headLineStyle3.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ticket['number'].toString(),
                        style: Styles.headLineStyle3.copyWith(color: textColor),
                      )
                    ],
                  ),
                ),
                const Gap(10),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date',
                        style: Styles.headLineStyle4.copyWith(color: textColor),
                      ),
                      // const Gap(10),
                      Text(
                        'Departure Time',
                        style: Styles.headLineStyle4.copyWith(
                          color: textColor,
                        ),
                      ),
                      Text(
                        'Number',
                        style: Styles.headLineStyle4.copyWith(color: textColor),
                      )
                    ],
                  ),
                ),
                const Gap(10),
                const Gap(10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
