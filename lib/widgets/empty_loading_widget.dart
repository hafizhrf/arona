import 'package:flutter/material.dart';
import 'package:mercenary/constants/colors.dart';

class EmptyLoading extends StatelessWidget {
  const EmptyLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        backgroundColor: LIGHT_PRIMARY_COLOR,
        valueColor: AlwaysStoppedAnimation<Color>(
          PRIMARY_COLOR,
        ),
      ),
    );
  }
}
