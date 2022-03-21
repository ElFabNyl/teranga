import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Teranga wallet',
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SizedBox(
              height: 40.0,
              width: 40.0,
              child: Image.asset('assets/images/a.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                    const SizedBox(width: 10.0,),
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
            )
          ],
        ),
      ),
    );
  }
}
