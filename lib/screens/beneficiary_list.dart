import 'package:flutter/material.dart';

import 'components/beneficiary.dart';

class BeneficiaryList extends StatefulWidget {
  const BeneficiaryList({Key? key}) : super(key: key);

  @override
  State<BeneficiaryList> createState() => _BeneficiaryListState();
}

class _BeneficiaryListState extends State<BeneficiaryList> {
  @override
  Widget build(BuildContext context) {
    //liste des beneficiaires
    List<Widget> beneficiaries = [
      Beneficiary(
        action: () {},
        label: 'Maria',
        image: Image.asset('assets/images/b.png'),
      ),

      Beneficiary(
        action: () {},
        label: 'Yuna',
        image: Image.asset('assets/images/c.png'),
      ),

      Beneficiary(
        action: () {},
        label: 'Flutter',
        image: Image.asset('assets/images/a.png'),
      ),

      Beneficiary(
        action: () {},
        label: 'Maria',
        image: Image.asset('assets/images/b.png'),
      ),

      Beneficiary(
        action: () {},
        label: 'Maria',
        image: Image.asset('assets/images/b.png'),
      ),

      Beneficiary(
        action: () {},
        label: 'Yuna',
        image: Image.asset('assets/images/c.png'),
      ),

      Beneficiary(
        action: () {},
        label: 'Flutter',
        image: Image.asset('assets/images/a.png'),
      ),

      Beneficiary(
        action: () {},
        label: 'Maria',
        image: Image.asset('assets/images/b.png'),
      ),

      //
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Beneficiary list',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
