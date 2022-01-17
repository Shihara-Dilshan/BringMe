import 'package:flutter/material.dart';
import 'package:payhere_demo/widgets/dashboard/image_carousel.dart';
import 'package:payhere_demo/widgets/dashboard/item_card.dart';
import 'package:payhere_demo/widgets/dashboard/item_carousel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const items = [1, 23, 32, 32, 32, 23, 32, 2332, 3, 23];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _customListViewController = ScrollController();
  bool closeTopCarousel = false;

  @override
  void initState() {
    super.initState();
    _customListViewController.addListener(() {
      setState(() {
        closeTopCarousel = _customListViewController.offset > 50;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _customListViewController.dispose();
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
        itemCount: Home.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: ComplicatedImageDemo(),
          );
        },
      ))
    ]);
  }
}
