import 'dart:ui';

import 'package:first_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int a = 30;
    return Scaffold(
      appBar: AppBar(
        title: const Text("NETFLIX"),
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      body: Container(
        child: Center(child: Text("test $a application" + a.toString())),
        color: Colors.transparent,
      ),
      drawer: const MyDrawer(),
    );
  }
}
