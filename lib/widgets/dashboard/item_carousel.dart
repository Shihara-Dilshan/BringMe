import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:payhere_demo/widgets/dashboard/item_card.dart';

class ComplicatedImageDemo extends StatelessWidget {
  const ComplicatedImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Most Popular Itemss",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.96,
            autoPlay: false,
            aspectRatio: 1.6,
            enlargeCenterPage: false,
          ),
          items: const [
            ItemCard(),
            ItemCard(),
          ],
        ),
      ],
    );
  }
}
