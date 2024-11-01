import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Shoes',
            style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/flutter_application_2/images/logo.png'), // Gambar profil
              ),
            )
          ],
        ),
        body: ShoeList(),
      ),
    );
  }
}

class ShoeList extends StatelessWidget {
  final List<Map<String, String>> shoes = [
    {
      'name': 'Nike SB Zoom Blazer Mid Premium',
      'price': '₹8,795',
      'image': 'images/shoe1.png',
      'category': '',
    },
    {
      'name': 'Nike Air Zoom Pegasus',
      'price': '₹9,995',
      'image': 'images/shoe2.png',
      'category': 'Men\'s Road Running Shoes',
    },
    {
      'name': 'Nike ZoomX Vaporfly',
      'price': '₹19,695',
      'image': 'images/shoe3.png',
      'category': 'Men\'s Road Racing Shoes',
    },
    {
      'name': 'Nike Air Force 1 S50',
      'price': '₹6,295',
      'image': 'images/shoe4.png',
      'category': 'Older Kids\' Shoe',
    },
    {
      'name': 'Nike Waffle One',
      'price': '₹8,295',
      'image': 'images/shoe5.png',
      'category': 'Men\'s Shoes',
    },
  ];

  ShoeList({super.key}); // Hapus kata kunci `const` dari sini

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoes.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    shoes[index]['image']!,
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shoes[index]['name']!,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        if (shoes[index]['category']!.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              shoes[index]['category']!,
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            shoes[index]['price']!,
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
