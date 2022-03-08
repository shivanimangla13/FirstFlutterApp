import 'dart:math';
import 'dart:ui';

import 'package:first_application/models/catalogue.dart';
import 'package:first_application/widgets/drawer.dart';
import 'package:first_application/widgets/items_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  void ListItemTapped() {}
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(5, (index) => Items.list[0]);
    int a = 30;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalogue App",
          textScaleFactor: 1.2,
        ),
        backgroundColor: Colors.white,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: (ListTile(
            leading: Image.asset("assets/images/iPhone.jpg"),
            title: Text(dummyList[index].name),
            trailing: Text(
              "\$${dummyList[index].price.toString()}",
              style: const TextStyle(color: Colors.deepPurple),
              textScaleFactor: 1.2,
            ),
            onTap: ListItemTapped,
          )),
        ),
        itemCount: dummyList.length,
      ),
      drawer: const MyDrawer(),
    );
  }
}
