import 'package:flutter/material.dart';

class ShowBottomModal {
  static show({required Widget widget, required BuildContext context}) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: widget);
      },
    );
  }
}
