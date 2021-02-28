import 'package:flutter/material.dart';
import 'package:food_market/models/models.dart';
import 'package:get/get.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: PaymentPage(
          transaction: Transaction(
              food: mockFood[0],
              user: mockUser,
              quantity: 2,
              total: (mockFood[0].price * 2 * 1.1).toInt() + 50000),
        ));
  }
}
