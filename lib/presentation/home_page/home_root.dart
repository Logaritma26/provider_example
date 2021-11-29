import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomeRoot extends StatelessWidget {
  const HomeRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AutoRouter(),
    );
  }
}
