import 'package:flutter/material.dart';

class Category {
  final String imageAssetPath;
  final String title;
  final Color color;

  const Category({
    required this.imageAssetPath,
    required this.title,
    required this.color,
  });
}

final List<Category> categories = [
  Category(
    imageAssetPath: 'images/it.png',
    title: 'IT and Software',
    color: Color(0xFF000000),
  ),
  Category(
    imageAssetPath: 'images/health.png',
    title: 'Health and Fitness',
    color: Color(0xFFFF7A33),
  ),
  Category(
    imageAssetPath: 'images/office.png',
    title: 'Office Productivity',
    color: Color(0xFF527D43),
  ),
  Category(
    imageAssetPath: 'images/accounting.png',
    title: 'Finance and Accounting',
    color: Color(0xFF3550DC),
  ),
  Category(
    imageAssetPath: 'images/accounting.png',
    title: 'Finance and Accounting',
    color: Color(0xFF3550DC),
  ),
];

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final category = categories[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          category.imageAssetPath,
                          width: 32,
                          height: 32,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    SizedBox(
                      width: 75,
                      child: Text(
                        category.title,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: category.color,
                          fontFamily: 'poppins_medium'
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}