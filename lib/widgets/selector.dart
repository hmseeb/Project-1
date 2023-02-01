import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/styles.dart';

FittedBox selector(size, headerOne, headertwo) {
  return FittedBox(
    // alignment: Alignment.topLeft,
    // fit: BoxFit.none,
    child: Container(
        // width: size.width * 0.88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(14)),
              // alignment: Alignment.center,
              width: size.width * 0.44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Text(
                headerOne,
                textAlign: TextAlign.center,
                style: Styles.textStyle.copyWith(fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
              // alignment: Alignment.center,
              width: size.width * 0.44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFF4F6FD),
              ),
              child: Text(
                headertwo,
                textAlign: TextAlign.center,
                style: Styles.textStyle.copyWith(fontSize: 18),
              ),
            )
          ],
        )),
  );
}
