// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:math';
import 'dart:ui';

import 'package:first_application/models/catalogue.dart';
import 'package:first_application/widgets/drawer.dart';
import 'package:first_application/widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void ListItemTapped() {}
  var list = <Catalogue>[];
  @override
  void initState() {
    super.initState();
    LoadData();
  }

  LoadData() async {
    final json = await rootBundle.loadString("assets/files/catalogue.json");
    final decodeData = jsonDecode(json);
    var productsData = decodeData["products"];
    list = List.from(productsData).map((e) => Catalogue.fromMap(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
      body: list != null && list.isNotEmpty
          ? ListView.builder(
              itemBuilder: (context, index) => Card(
                child: (ListTile(
                  leading: Image.network(list[index].image),
                  title: Text(list[index].name),
                  trailing: Text(
                    "\$${list[index].price.toString()}",
                    style: const TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                    textScaleFactor: 1.2,
                  ),
                  onTap: ListItemTapped,
                )),
              ),
              itemCount: list.length,
            )
          : const Center(child: CircularProgressIndicator()),
      drawer: const MyDrawer(),
    );
  }
}
