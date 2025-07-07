import 'package:flutter/material.dart';

class Learning extends StatefulWidget {
  @override
  _LearningState createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color(0xFFF5F7FB),
          title: Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Mock ',
                    style: TextStyle(
                      color: Color(0xFF7B61FF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'University',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
          child:
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 11),
                    child: Container(
                      width: 49,
                      height: 38,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      alignment: Alignment.center,
                      child: Text(
                        'All',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ))
              ])
    )
      ),
    );
  }
}
