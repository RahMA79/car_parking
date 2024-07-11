import 'package:car_parking/ManagerPages/ScannerPage.dart';
import 'package:car_parking/Components/bottomNavBar.dart';
import 'package:car_parking/ManagerPages/controlPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: Stack(
        children: [
          Offstage(
            offstage: selectedIndex != 0,
            child: const ControlPage(),
          ),
          Offstage(
            offstage: selectedIndex != 1,
            child: ScannerPage(updateParent: update),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        elevation: 10,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
        child: Container(
          height: screenSize.height * 0.122,
          width: screenSize.width * 0.9,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: NavBar(
                updateParent: updateSelectedIndex,
                selectedIcon: selectedIndex,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
