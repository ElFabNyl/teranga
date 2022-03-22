import 'package:flutter/material.dart';

class ComposantRow extends StatelessWidget {
  final Widget label1;
  final Widget label2;
  final Widget label3;
  final Widget label4;
  const ComposantRow({
    Key? key,
    required this.label1,
    required this.label2,
    required this.label3,
    required this.label4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            label1,
            label2,
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [label3, label4],
          )
        ],
      ),
    );
  }
}
