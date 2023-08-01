import 'package:flutter/material.dart';
import 'package:flutter_application_3/view/view_classmates.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Classmates(),
      debugShowCheckedModeBanner: false,
    );
  }
}
