import 'package:flutter/material.dart';

class Beneficiary extends StatelessWidget {
  final String label;
  final Widget image;
  final Function()? action;
  const Beneficiary({
    Key? key,
    required this.label,
    required this.image,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          GestureDetector(onTap: action, child: image),
          const SizedBox(height: 10.0),
          Text(
            label,
            style: const TextStyle(
                color: Color(0xff1E036C), fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
