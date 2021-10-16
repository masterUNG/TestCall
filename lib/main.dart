import 'package:flutter/material.dart';
import 'package:testcall/phone_action.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PhoneAction(),
    );
  }
}
