import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

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
                    onPressed: () {},
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
