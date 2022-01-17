import 'package:flutter/material.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';

class ItemCard extends StatelessWidget {
  ItemCard({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(
                'https://essstr.blob.core.windows.net/essimg/350x/Small/Pic7434.jpg',
                fit: BoxFit.cover,
                width: 1000.0),
            const Positioned(
              top: 20,
              left: 10,
              child: Text(
                "Signal Toothpaste Strong Teeth 160g",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            const Positioned(
              top: 35,
              left: 10,
              child: Text(
                "Rs 120",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              child: Row(
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.black,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Add to cart'),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.black,
                      ),
                    ),
                    onPressed: () {
                      PayHere.startPayment(paymentObject, (paymentId) {
                        print(
                            "One Time Payment Success. Payment Id: $paymentId");
                      }, (error) {
                        print("One Time Payment Failed. Error: $error");
                      }, () {
                        print("One Time Payment Dismissed");
                      });
                    },
                    child: const Text('Buy now'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
