import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teranga/screens/mobile_wallet.dart';

class AddWallet extends StatefulWidget {
  const AddWallet({Key? key}) : super(key: key);

  @override
  State<AddWallet> createState() => _AddWalletState();
}

class _AddWalletState extends State<AddWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Add wallet',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 70.0),
          child: Column(
            children: [
              const Text(
                'Select wallet type',
                style: TextStyle(
                    color: Color(0xff6937FA),
                    fontWeight: FontWeight.w700,
                    fontSize: 19.0),
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: const Color(0xffFFDBD9),
                            child: Image.asset('assets/images/phone.png'),
                          ),
                          const Text(
                            'Card',
                            style: TextStyle(
                                color: Color(0xffE45504),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  GestureDetector(
                    onTap: () {
                      //
                      Get.to(() => const MobileWallet());
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundColor: const Color(0xffDEFFD9),
                          child: Image.asset('assets/images/mobile_wallet.png'),
                        ),
                        const Text(
                          'Mobile Wallet',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
