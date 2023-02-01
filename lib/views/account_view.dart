import 'package:brain_bite/utils/app_layout.dart';
import 'package:brain_bite/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Container(
        margin: EdgeInsets.only(top: AppLayout.getHeight(40)),
        padding: EdgeInsets.all(AppLayout.getHeight(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              //Book tickets
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: AppLayout.getWidth(90),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/img_1.png'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Book Tickets',
                      style: Styles.headLineStyle2,
                    ),
                    Text('New York',
                        style: Styles.headLineStyle4.copyWith(
                          fontSize: AppLayout.getHeight(14),
                        )),
                    Gap(AppLayout.getHeight(5)),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(20))),
                      padding: EdgeInsets.all(AppLayout.getHeight(4)),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.shield_outlined,
                            color: Colors.greenAccent,
                          ),
                          Text(
                            'Premium Status',
                            style: Styles.headLineStyle3.copyWith(
                              color: const Color(0xFF526799),
                              fontSize: AppLayout.getHeight(16),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(
                      top: AppLayout.getHeight(7),
                    ),
                    alignment: Alignment.center,
                    child: InkWell(
                        onTap: () {},
                        child: const Text(
                          'Edit',
                          style: TextStyle(color: Color(0xFF526799)),
                        ))),
              ],
            ),
            Gap(AppLayout.getHeight(40)),
            Stack(children: [
              Container(
                padding: EdgeInsets.all(AppLayout.getHeight(20)),
                decoration: BoxDecoration(
                    color: const Color(0xFF526799),
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10))),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(10)),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Icon(
                        Icons.lightbulb,
                        color: Color(0xFF526799),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You\'ve got a new award',
                            style: Styles.headLineStyle4.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'You\'ve 95 flights in an year',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: -50,
                top: -70,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(40)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 18,
                        color: const Color.fromARGB(255, 63, 56, 255)),
                  ),
                ),
              ),
            ]),
            Gap(AppLayout.getHeight(40)),
            Text(
              'Accumulated Miles',
              style: Styles.headLineStyle2,
            ),
            Gap(AppLayout.getHeight(40)),
            Align(
              child: Text(
                '192806',
                style: Styles.headLineStyle1.copyWith(fontSize: 44),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            const AccountRowOne(
              headerOne: 'Miles accrued',
              headerTwo: '23 May 2021',
            ),
            Gap(AppLayout.getHeight(20)),
            const AccountRowTwo(
              headerOne: '23 042',
              headerTwo: 'Airline CO',
            ),
            const AccountRowOne(
              headerOne: 'Miles',
              headerTwo: 'Recieved From',
            ),
            Gap(AppLayout.getHeight(20)),
            const AccountRowTwo(
              headerOne: '23',
              headerTwo: 'McDonald\'s',
            ),
            const AccountRowOne(
              headerOne: 'Miles',
              headerTwo: 'Recieved From',
            ),
            Gap(AppLayout.getHeight(20)),
            const AccountRowTwo(
              headerOne: '53 087',
              headerTwo: 'Exuma',
            ),
            const AccountRowOne(
              headerOne: 'Miles',
              headerTwo: 'Recieved From',
            ),
            Gap(AppLayout.getHeight(30)),
            Align(
              alignment: Alignment.center,
              child: Text(
                'How to get more miles',
                style: Styles.headLineStyle4
                    .copyWith(color: const Color(0xFF526799)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AccountRowTwo extends StatelessWidget {
  final String headerOne;
  final String headerTwo;
  const AccountRowTwo({
    super.key,
    required this.headerOne,
    required this.headerTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          headerOne,
          style: Styles.textStyle.copyWith(fontSize: 18),
        ),
        Gap(AppLayout.getHeight(40)),
        Text(
          headerTwo,
          style: Styles.textStyle.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}

class AccountRowOne extends StatelessWidget {
  final String headerOne;
  final String headerTwo;
  const AccountRowOne({
    super.key,
    required this.headerOne,
    required this.headerTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          headerOne,
          style: Styles.headLineStyle3.copyWith(fontSize: 18),
        ),
        Gap(AppLayout.getHeight(40)),
        Text(
          headerTwo,
          style: Styles.headLineStyle3.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}
