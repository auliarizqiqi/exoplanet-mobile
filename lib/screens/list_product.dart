import 'package:flutter/material.dart';
import 'package:exoplanet_mobile/widgets/left_drawer.dart';
import 'package:exoplanet_mobile/model/product.dart';
import 'package:exoplanet_mobile/screens/detail_item.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  State<StatefulWidget> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  Future<List<Product>> fetchProduct(request) async {
    var data = await request.get('http://127.0.0.1:8000/get-product/');

    // Melakukan konversi data json menjadi object Product
    List<Product> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(Product.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Items',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
          future: fetchProduct(request),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return const Column(
                  children: [
                    Text(
                      "No items.",
                      style: TextStyle(color: Color.fromARGB(255, 116, 28, 78), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailItemPage(item: snapshot.data![index]),
                        ),
                      );
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${snapshot.data![index].fields.name}",
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            const SizedBox(height: 10),
                            Text(
                                "Amount : ${snapshot.data![index].fields.amount}")
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
            }
          }),
    );
  }
}