import 'package:a1234111/pages/learning.dart';
import 'package:a1234111/pages/main_activity.dart';
import 'package:flutter/material.dart';

class PageItem {
  final String imageAssetPath;
  final Widget pageWidget;
  final String iconText;

  const PageItem({
    required this.imageAssetPath,
    required this.pageWidget,
    required this.iconText,
  });
}

final List<PageItem> pages = [
  PageItem(
    imageAssetPath: 'images/ic_home.png',
    pageWidget: MainActivity(),
    iconText: 'Home',
  ),
  PageItem(
    imageAssetPath: 'images/ic_search.png',
    pageWidget: MainActivity(),
    iconText: 'Search',
  ),
  PageItem(
    imageAssetPath: 'images/ic_exam.png',
    pageWidget: Learning(),
    iconText: 'Exams',
  ),
  PageItem(
    imageAssetPath: 'images/bookmark.png',
    pageWidget: MainActivity(),
    iconText: 'Wishlist',
  ),
  PageItem(
    imageAssetPath: 'images/ic_account.png',
    pageWidget: MainActivity(),
    iconText: 'Account',
  ),
];

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: const Color(0xFFF5F7FB),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(pages.length, (index) {
            final page = pages[index];
            final bool isSelected = index == selectedIndex;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => page.pageWidget),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      if (isSelected)
                        Positioned(
                          top: -13,
                          left: -5,
                          child: Image.asset(
                            'images/plashka.png',
                            width: 33,
                            height: 7,
                            fit: BoxFit.contain,
                          ),
                        ),
                      Image.asset(
                        page.imageAssetPath,
                        width: 24,
                        height: 24,
                        fit: BoxFit.contain,
                        color: isSelected
                            ? const Color(0xFF7B61FF)
                            : const Color(0xFF666666),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    page.iconText,
                    style: TextStyle(
                      fontSize: 12,
                      color: isSelected
                          ? const Color(0xFF7B61FF)
                          : const Color(0xFF666666),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}