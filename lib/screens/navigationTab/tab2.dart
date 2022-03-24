import 'package:flutter/material.dart';

import '../components/elevated_button.dart';
import '../components/text_field.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
// Initial Selected Value
  String dropdownvalue = 'Wallet 1';

  // List of items in our dropdown menu
  var items = [
    'Wallet 1',
    'Wallet 2',
    'Wallet 3',
    'Wallet 4',
    'Wallet 5',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          children: [
            const CircleAvatar(
                radius: 40.0,
                backgroundColor: Color.fromARGB(255, 193, 177, 241),
                child: Icon(
                  Icons.arrow_circle_up_sharp,
                  color: Color(0xff6937FA),
                  size: 50,
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
              isnumberInput: false,
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xff6937FA),
              ),
              hintText: 'Beneficiary',
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
    );
  }
}
