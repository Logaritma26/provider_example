import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/routes.gr.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final RootRouter root = RootRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'RiverPod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: root.delegate(),
      routeInformationProvider: root.routeInfoProvider(),
      routeInformationParser: root.defaultRouteParser(),
      //builder: (BuildContext context, Widget? widget) => Container(),
      debugShowCheckedModeBanner: false,
    );
  }
}
