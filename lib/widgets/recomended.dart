import 'package:flutter/material.dart';

class Product {
  final String imageAssetPath;
  final String title;
  final String time;

  const Product({
    required this.imageAssetPath,
    required this.title,
    required this.time,
  });
}

final List<Product> products = [
  Product(imageAssetPath: 'images/java_logo.png', title: 'Java Core', time: '1h. 15min'),
  Product(imageAssetPath: 'images/c_logo.png', title: 'C Course', time: '1h. 15min'),
  Product(imageAssetPath: 'images/react_logo.png', title: 'React Course', time: '1h. 15min'),
];

class Recomended extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Recommended for you',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontFamily: 'poppins_medium'
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 170,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            separatorBuilder: (context, _) => const SizedBox(width: 12),
            itemBuilder: (BuildContext context, int index) {
              final product = products[index];
              return Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Image.asset(
                          product.imageAssetPath,
                          width: 140,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.title,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87,
                                        fontFamily: 'poppins_medium'
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    product.time,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                        fontFamily: 'poppins_regular'
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'images/bookmark.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}