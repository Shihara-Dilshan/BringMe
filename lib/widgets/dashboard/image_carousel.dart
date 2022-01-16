import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: false,
          ),
          items: [
            Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                'https://picsum.photos/250?image=9',
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                'https://picsum.photos/250?image=9',
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ],
        ),
        DotsIndicator(
          dotsCount: 5,
          position: 1,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        )
      ],
    );
  }
}
