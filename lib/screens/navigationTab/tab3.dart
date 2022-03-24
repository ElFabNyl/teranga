import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teranga/screens/top_up.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
          child: Column(
      children: [
          const Text(
            'Select Operator',
            style: TextStyle(
                color: Color(0xff6937FA),
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.yellow,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'MTN Cameroon',
                    style: TextStyle(color: Color(0xff1E036C)),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  //
                  Get.to(()=>const TopUP());
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff1E036C),
                ),
              )
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.orange,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'Orange Cameroon',
                    style: TextStyle(color: Color(0xff1E036C)),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  //
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff1E036C),
                ),
              )
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.redAccent,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'YUP Cameroon',
                    style: TextStyle(color: Color(0xff1E036C)),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  //
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff1E036C),
                ),
              )
            ],
          ),
      ],
    ),
        ));
  }
}
