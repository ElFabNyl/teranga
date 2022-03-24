import 'package:flutter/material.dart';

import 'components/elevated_button.dart';
import 'components/text_field.dart';

class TopUP extends StatefulWidget {
  const TopUP({Key? key}) : super(key: key);

  @override
  State<TopUP> createState() => _TopUPState();
}

class _TopUPState extends State<TopUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
            child: Column(
              children: [
                const CircleAvatar(
                    radius: 45.0,
                    backgroundColor: Color.fromARGB(255, 193, 177, 241),
                    child: Icon(
                      Icons.phone,
                      size: 50,
                      color: Color(0xff6937FA),
                    )),
                const SizedBox(
                  height: 15.0,
                ),
                const InputFormFieldWidget(
                  isEmailInput: false,
                  isnumberInput: true,
                  prefixIcon: Icon(
                    Icons.money,
                    color: Color(0xff6937FA),
                  ),
                  hintText: 'Enter the amount',
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const InputFormFieldWidget(
                  isEmailInput: false,
                  isnumberInput: true,
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Color(0xff6937FA),
                  ),
                  hintText: 'Enter the phone number',
                ),
                const SizedBox(
                  height: 15.0,
                ),
                DefaultElevatedButton(
                  text: const Text(
                    'Top up 20,000CFA',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  showArrowBack: false,
                  showArrowFoward: false,
                  backgroundColor: const Color(0xff6937FA),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
