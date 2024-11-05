import 'package:flutter/material.dart';
import 'package:calcnav_android/pages/add.dart';
import 'package:calcnav_android/pages/sub.dart';
import 'package:calcnav_android/pages/mul.dart';
class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  final List screens=[
    Add(),
    Sub(),
    Mul()

  ];
  int currentIndexValue=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: screens[currentIndexValue],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndexValue,
        onTap: (index){
          setState(() {
            currentIndexValue=index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.exposure_neg_1 ),
              label: "Subtract"),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Multiply"),

        ],
      ),
    );
  }
}