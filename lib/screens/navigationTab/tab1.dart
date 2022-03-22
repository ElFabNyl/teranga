import 'package:flutter/material.dart';

import '../components/beneficiary.dart';
import '../components/composant_row.dart';

class Tab1 extends StatelessWidget {
  const Tab1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //liste des beneficiaires
    List<Widget> beneficiaries = [
      const SizedBox(
        width: 10,
      ),
      Beneficiary(
        action: () {},
        label: 'Maria',
        image: Image.asset('assets/images/b.png'),
      ),
      const SizedBox(
        width: 10,
      ),
      Beneficiary(
        action: () {},
        label: 'Yuna',
        image: Image.asset('assets/images/c.png'),
      ),
      const SizedBox(
        width: 10,
      ),
      Beneficiary(
        action: () {},
        label: 'Flutter',
        image: Image.asset('assets/images/a.png'),
      ),
      const SizedBox(
        width: 10,
      ),
      Beneficiary(
        action: () {},
        label: 'Maria',
        image: Image.asset('assets/images/b.png'),
      ),

      //
    ];
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 200,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffC4E0FC),
                        borderRadius: BorderRadius.circular(15.0)),
                    width: 350.0,
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Visa',
                                style: TextStyle(
                                    color: Color(0xff6937FA),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0),
                              ),
                              Text(
                                '..9345',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0),
                              )
                            ],
                          ),
                          const Text(
                            '200,000 XFA',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 23.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffE3D9FF),
                        borderRadius: BorderRadius.circular(15.0)),
                    width: 350.0,
                    height: 170,
                    child: Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Send money to',
                  style: TextStyle(
                      color: Color(0xff6937FA), fontWeight: FontWeight.w700),
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Row(
                    children: const [
                      Text(
                        'see all',
                        style: TextStyle(
                            color: Color(0xff6937FA),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 8.0),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff6937FA),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: [
                Beneficiary(
                  action: () {},
                  label: 'New',
                  image: const CircleAvatar(
                    backgroundColor: Color(0xffE3D9FF),
                    radius: 25.0,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: beneficiaries,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15.0),
          const ComposantRow(
            label1: Text(
              'Dereck Agendia',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            label2: Text(
              '3/18/2022',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            label3: Text(
              'Top up',
              style: TextStyle(
                  color: Color(0xff1E036C),
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            label4: Text(
              '20,000FCFA',
              style: TextStyle(
                  color: Color(0xff1E036C),
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ),
          const ComposantRow(
            label1: Text(
              'Rihanna Fenty',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            label2: Text(
              '3/18/2022',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            label3: Text(
              'Top up',
              style: TextStyle(
                  color: Color(0xff1E036C),
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            label4: Text(
              '80,000FCFA',
              style: TextStyle(
                  color: Color(0xff1E036C),
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
