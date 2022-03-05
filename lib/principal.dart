import 'dart:ui';

import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://picsum.photos/200/300"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            ),
            const Center(
              child: Text(
                'Hora',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Row(),
            Row(),
            Row(),
            Row(),
            Row(),
            const Center(
              child: Text(
                'Frase Celebre',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
