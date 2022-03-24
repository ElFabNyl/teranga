import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffF3EFFF),
            borderRadius: BorderRadius.circular(10)
          ),
          child: TabBar(
            indicator: BoxDecoration(
                color: const Color(0xff6937FA),
                borderRadius: BorderRadius.circular(10)),
            tabs: const [
              Tab(
                text: 'MTN Mobile Money',
              ),
              Tab(
                text: 'Orange Money',
              ),
              Tab(
                text: 'Yup Money',
              )
            ],
          ),
        )
      ],
    );
  }
}
