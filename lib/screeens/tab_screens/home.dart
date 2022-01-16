import 'package:flutter/material.dart';
import 'package:payhere_demo/widgets/dashboard/image_carousel.dart';

class CarouselDemo extends StatefulWidget {
  const CarouselDemo({Key? key}) : super(key: key);
  static const items = [1, 23, 32, 32, 32, 23, 32, 2332, 3, 23];

  @override
  State<CarouselDemo> createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  final ScrollController _customListViewController = ScrollController();
  bool closeTopCarousel = false;

  @override
  void initState() {
    super.initState();
    _customListViewController.addListener(() {
      print("sdsd");
      setState(() {
        closeTopCarousel = _customListViewController.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: const ImageCarousel(),
        height: closeTopCarousel ? 0 : 200,
      ),
      Expanded(
          child: ListView.builder(
        controller: _customListViewController,
        itemCount: CarouselDemo.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(CarouselDemo.items[index].toString()),
          );
        },
      ))
    ]);
  }
}
