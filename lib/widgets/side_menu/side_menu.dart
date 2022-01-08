import 'package:flutter/material.dart';
import 'package:payhere_demo/widgets/side_menu/side_menu_body.dart';
import 'package:payhere_demo/widgets/side_menu/side_menu_header.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [SideMenuHeader(), SideMenuBody()],
    );
  }
}
