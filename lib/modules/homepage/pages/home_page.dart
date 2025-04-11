import 'package:flutter/material.dart';
import 'package:mercenary/constants/colors.dart';
import 'package:mercenary/helpers/dev_print.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => devPrint('test'),
          elevation: 1,
          backgroundColor: FONT_WHITE_COLOR,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, size: 36, color: PRIMARY_COLOR),
        ),
        body: const Center(child: Text('Homepage')),
      ),
    );
  }
}
