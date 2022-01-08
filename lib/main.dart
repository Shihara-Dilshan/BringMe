// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:payhere_demo/widgets/home_page/background.dart';
import 'package:payhere_demo/widgets/home_page/search_bar.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';

import 'config/constants.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Derby',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends HookConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  void xxx() {
    Map paymentObject = {
      "sandbox": true, // true if using Sandbox Merchant ID
      "merchant_id": "1217235", // Replace your Merchant ID
      "merchant_secret":
          "48WqmzPtZlG8QfptjARMIN4JDF4jat5308bRs7gOSx8w", // See step 4e
      "notify_url": "http://sample.com/notify",
      "order_id": "ItemNo12345",
      "items": "Hello from Flutter!",
      "amount": "50.00",
      "currency": "LKR",
      "first_name": "Saman",
      "last_name": "Perera",
      "email": "samanp@gmail.com",
      "phone": "0771234567",
      "address": "No.1, Galle Road",
      "city": "Colombo",
      "country": "Sri Lanka",
      "delivery_address": "No. 46, Galle road, Kalutara South",
      "delivery_city": "Kalutara",
      "delivery_country": "Sri Lanka",
      "custom_1": "",
      "custom_2": ""
    };

    PayHere.startPayment(paymentObject, (paymentId) {
      print("One Time Payment Success. Payment Id: $paymentId");
    }, (error) {
      print("One Time Payment Failed. Error: $error");
    }, () {
      print("One Time Payment Dismissed");
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      // body: Stack(
      //   children: [
      //     const Background(),
      //     Positioned(
      //       top: 120,
      //       left: Constants.commonMargin,
      //       child: SearchBar(),
      //     ),
      //     RaisedButton(
      //       child: Text("sds"),
      //       onPressed: () {
      //         xxx();
      //       },
      //     ),
      //   ],
      // ),
      body: RaisedButton(
        child: Text("sds"),
        onPressed: () {
          xxx();
        },
      ),
    );
  }
}
