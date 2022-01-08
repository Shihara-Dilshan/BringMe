import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:payhere_demo/screeens/root_screen/root_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Derby',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RootPage(),
    );
  }
}
