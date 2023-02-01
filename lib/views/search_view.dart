import 'package:brain_bite/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../widgets/selector.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Container(
        padding: EdgeInsets.all(AppLayout.getWidth(30)),
        child: ListView(
          children: [
            Gap(AppLayout.getHeight(20)),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'What are\nyou looking for?',
                      style: Styles.headLineStyle1.copyWith(fontSize: 40),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                selector(size, 'Airline Tickets', 'Air'),
                Gap(AppLayout.getHeight(30)),
                Container(
                  height: AppLayout.getHeight(50),
                  padding: EdgeInsets.all(AppLayout.getHeight(10)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10.0))),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.flight_takeoff,
                        color: Colors.grey,
                      ),
                      Gap(AppLayout.getHeight(10)),
                      Text(
                        'Departure',
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  height: AppLayout.getHeight(50),
                  padding: EdgeInsets.all(AppLayout.getHeight(10)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10.0))),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.flight_land,
                        color: Colors.grey,
                      ),
                      Gap(AppLayout.getHeight(10)),
                      Text(
                        'Arrival',
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  height: AppLayout.getHeight(60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: const Color.fromARGB(255, 36, 58, 255),
                  ),
                  child: const Text(
                    'Find tickets',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Flights',
                      style: Styles.headLineStyle1,
                    ),
                    GestureDetector(
                      onTap: () {
                        // print('I am pressed');
                      },
                      child: Text(
                        'View All',
                        style: Styles.headLineStyle4,
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(40)),
                Container(
                  decoration: BoxDecoration(color: Styles.bgColor),
                  width: AppLayout.getWidth(370),
                  height: 400,
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.40,
                        padding: EdgeInsets.all(AppLayout.getHeight(14)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(21)),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        AppLayout.getHeight(21)),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage('assets/images/sit.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                  child: SizedBox(
                                    width: AppLayout.getHeight(200),
                                    height: AppLayout.getHeight(200),
                                  ),
                                ),
                                Gap(AppLayout.getHeight(20)),
                                Text(
                                  '20% discount\non bussiness\nclass\ntickets from\nAirlines On\nInternational',
                                  style: Styles.headLineStyle4,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                      Gap(AppLayout.getHeight(20)),
                      Column(
                        children: [
                          Stack(children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              width: size.width * 0.40,
                              height: AppLayout.getHeight(190),
                              decoration: BoxDecoration(
                                  color: Colors.cyan[600],
                                  borderRadius: BorderRadius.circular(21)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Discount\nfor survey',
                                    style: Styles.headLineStyle2.copyWith(
                                      color: Colors.white60,
                                    ),
                                  ),
                                  Gap(AppLayout.getHeight(6)),
                                  Text(
                                    textAlign: TextAlign.left,
                                    'Take the survey\nabout our\nservices and\nget a discount',
                                    style: Styles.textStyle.copyWith(
                                        fontSize: 17,
                                        color: Colors.white60,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: -45,
                              right: -40,
                              child: Container(
                                padding: const EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    border: Border.all(
                                        width: 12,
                                        color: const Color(0xFF189999))),
                              ),
                            )
                          ]),
                          Gap(AppLayout.getHeight(20)),
                          Container(
                            width: size.width * 0.40,
                            height: AppLayout.getHeight(190),
                            decoration: BoxDecoration(
                                color: Styles.orangeColor,
                                borderRadius: BorderRadius.circular(21)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Take love',
                                  style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '🥰',
                                      style: Styles.headLineStyle2.copyWith(
                                        color: Colors.white,
                                        fontSize: 33,
                                      ),
                                    ),
                                    Gap(AppLayout.getHeight(10)),
                                    Text(
                                      '💕',
                                      style: Styles.headLineStyle2.copyWith(
                                        color: Colors.white,
                                        fontSize: 44,
                                      ),
                                    ),
                                    Text(
                                      '😘',
                                      style: Styles.headLineStyle2.copyWith(
                                        fontSize: 33,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Gap(AppLayout.getHeight(10)),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
