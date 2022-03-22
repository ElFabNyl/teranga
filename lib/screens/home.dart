import 'package:flutter/material.dart';

import 'navigationTab/tab1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedTab = 0;

  final List<Widget> _tabWidgets = [
    const Tab1(),
    Text('no data'),
    Text('no data'),
    Text('no data')
  ];

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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff6937FA),
        unselectedItemColor: Colors.white,
        backgroundColor: const Color(0xffEBE4FF),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        // i should handle this state with BloC
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.send),
            label: const Text(
              'Send money',
              style: TextStyle(color: Colors.black),
            ).data,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.upcoming),
            label: const Text(
              'Top up',
              style: TextStyle(color: Colors.black),
            ).data,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.track_changes),
            label: const Text(
              'Transaction',
              style: TextStyle(color: Colors.black),
            ).data,
          ),
        ],
      ),
      body: Column(
        children: [
          _tabWidgets[_selectedTab],
        ],
      ),
    );
  }
}
