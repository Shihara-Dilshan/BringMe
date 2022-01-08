import 'package:flutter/material.dart';

class SideMenuBody extends StatelessWidget {
  const SideMenuBody({Key? key}) : super(key: key);
  static const items = [1, 1, 11, 1, 1, 1, 1, 11, 1, 1];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("sdsd"),
          );
        },
      ),
    ));
  }
}
