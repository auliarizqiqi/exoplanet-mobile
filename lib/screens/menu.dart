import 'package:flutter/material.dart';
import 'package:exoplanet_mobile/widgets/left_drawer.dart';
import 'package:exoplanet_mobile/widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<MenuItem> items = [
    MenuItem("Show Items", Icons.checklist, Colors.pinkAccent),
    MenuItem("Add Items", Icons.add_shopping_cart, Colors.pinkAccent),
    MenuItem("Logout", Icons.logout, Colors.pinkAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'EXOPLANET SHOP',
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), 
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'EXOPLANET SHOP', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((MenuItem item) {
                  return MenuCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}