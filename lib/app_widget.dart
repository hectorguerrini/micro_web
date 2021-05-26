import 'package:flutter/material.dart';

import 'home_widget.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabalho de micro',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(colorScheme: ColorScheme.dark()),
    );
  }
}
