import 'package:flutter/material.dart';
import 'package:pizza_app_ui/consts.dart';

class SizeOptionItem extends StatelessWidget {
  const SizeOptionItem({
    super.key,
    required this.selectedSize,
    required this.sizeOptions,
  });

  final bool selectedSize;
  final String sizeOptions;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selectedSize ? black : white,
            boxShadow: [
              BoxShadow(
                  color: black.withOpacity(0.3),
                  offset: const Offset(0, 3),
                  blurRadius: 8,
                  spreadRadius: 1),
              const BoxShadow(
                  color: white,
                  offset: Offset(0, -3),
                  blurRadius: 2,
                  spreadRadius: 1),
            ]),
        child: Center(
            child: Text(
          sizeOptions,
          style: font.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: selectedSize ? white : black.withOpacity(0.7)),
        )));
  }
}
