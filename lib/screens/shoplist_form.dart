import 'package:flutter/material.dart';
import 'package:exoplanet_mobile/model/Item.dart'; // Pastikan import model item
import 'package:exoplanet_mobile/widgets/left_drawer.dart';

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: Item.listItem.length,
        itemBuilder: (context, index) {
          Item currentItem = Item.listItem[index];
          return ListTile(
            title: Text(currentItem.name),
            subtitle: Text(
                'Jumlah: ${currentItem.amount}\nDeskripsi: ${currentItem.description}'),
            isThreeLine: true,
            onTap: () {
              // Implementasi logika untuk menangani ketika item di-tap
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Detail Product'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nama: ${currentItem.name}'),
                          Text('Jumlah Product: ${currentItem.amount}'),
                          Text('Deskripsi: ${currentItem.description}'),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}