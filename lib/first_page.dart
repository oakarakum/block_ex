// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BlocEx extends StatefulWidget {
  const BlocEx({super.key});

  @override
  State<BlocEx> createState() => _BlocExState();
}

class _BlocExState extends State<BlocEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
