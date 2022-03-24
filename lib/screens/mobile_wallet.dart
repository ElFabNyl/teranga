import 'package:flutter/material.dart';
import 'package:teranga/screens/components/elevated_button.dart';

import 'components/text_field.dart';

class MobileWallet extends StatefulWidget {
  const MobileWallet({Key? key}) : super(key: key);

  @override
  State<MobileWallet> createState() => _MobileWalletState();
}

class _MobileWalletState extends State<MobileWallet> {
  @override
  Widget build(BuildContext context) {
    // Initial Selected Value
    String dropdownvalue = 'MTN Mobile Money';

    // List of items in our dropdown menu
    var items = [
      'MTN Mobile Money',
      'Orange Money',
      'EU Money',
    ];
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
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xffEBE4FF),
                    radius: 30.0,
                    child: Image.asset('assets/images/wallet.png'),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Configure wallet',
                    style: TextStyle(
                        color: Color(0xff6937FA),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              const InputFormFieldWidget(
                isEmailInput: false,
                isnumberInput: false,
                hintText: 'Name of wallet',
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              const InputFormFieldWidget(
                isEmailInput: false,
                isnumberInput: true,
                hintText: 'Number',
              ),
              const SizedBox(
                height: 40.0,
              ),
              DefaultElevatedButton(
                text: const Text('Add'),
                showArrowBack: false,
                showArrowFoward: false,
                backgroundColor: const Color(0xff6937FA),
                onPressed: () {
                  //
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
