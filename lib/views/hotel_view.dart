import 'package:brain_bite/utils/app_layout.dart';
import 'package:brain_bite/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Hotel extends StatelessWidget {
  const Hotel({
    super.key,
    required this.hotel,
  });
  final Map<String, dynamic> hotel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppLayout.getWidth(350),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 10),
      child: SizedBox(
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 84, 111, 174),
              borderRadius: BorderRadius.circular(21)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Gap(10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          image: DecorationImage(
                            image: AssetImage(hotel['img']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: AppLayout.getHeight(200),
                        width: AppLayout.getWidth(400),
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          Text(
                            hotel['title'],
                            style: Styles.headLineStyle1
                                .copyWith(color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          Text(
                            hotel['country'],
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white70),
                          ),
                        ],
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          Text(
                            hotel['night'],
                            style: Styles.headLineStyle1
                                .copyWith(color: Colors.grey[500]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(30),
            ],
          ),
        ),
      ),
    );
  }
}
