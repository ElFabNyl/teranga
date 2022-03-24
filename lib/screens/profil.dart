import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teranga/screens/add_wallet.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Profil',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/a.png'),
                      const Text(
                        'Jonathan Kent',
                        style: TextStyle(
                            color: Color(0xff6937FA),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xffDCD1FD),
                      radius: 17.0,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'My Account',
                          style: TextStyle(
                              color: Color(0xff1E036C),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xffDCD1FD),
                      radius: 17.0,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    TextButton(
                        onPressed: () {
                          //
                          Get.to(() => const AddWallet());
                        },
                        child: const Text(
                          'Wallet',
                          style: TextStyle(
                              color: Color(0xff1E036C),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xffDCD1FD),
                      radius: 17.0,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Security',
                          style: TextStyle(
                              color: Color(0xff1E036C),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xffDCD1FD),
                      radius: 17.0,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Transaction history',
                          style: TextStyle(
                              color: Color(0xff1E036C),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xffDCD1FD),
                      radius: 17.0,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Settings',
                          style: TextStyle(
                              color: Color(0xff1E036C),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
