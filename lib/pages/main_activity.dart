import 'package:flutter/material.dart';
import '../widgets/BottomBar.dart';
import '../widgets/recomended.dart';
import '../widgets/categories.dart';
import '../widgets/top_courses.dart';

class MainActivity extends StatefulWidget {

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Color(0xFFF5F7FB),
            title: Padding(padding: const EdgeInsets.only(left:30, top:30),
             child: RichText(
               text: TextSpan(
                 children: [
                   TextSpan(
                     text: 'Mock ',
                       style: TextStyle(
                           color: Color(0xFF7B61FF),
                           fontSize: 20,
                           fontWeight: FontWeight.bold
                       )
                   ),
                   TextSpan(
                       text: 'University',
                       style: TextStyle(
                           color: Color(0xFF000000),
                           fontSize: 20,
                           fontWeight: FontWeight.bold
                       )
                   )
                 ]
               )
             )
            )
          )
      ),
      backgroundColor: Color(0xFFF5F7FB),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Recomended(),
                const SizedBox(height: 8),
                  Categories(),
                const SizedBox(height: 8),
                top_courses()
              ],
            ),
          ),
          BottomBar()
        ],
      ),
    );
  }
}