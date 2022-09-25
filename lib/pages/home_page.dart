import 'dart:ui';

import 'package:coffie_ui/utility/card_pages.dart';
import 'package:coffie_ui/utility/coffeetypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List coffeeType = [
    ['Cappucino', true],
    ['Latte', false],
    ['Black', false],
  ];

  void coffeeTypeSelected() {}

  int currentIndex = 0;
  void changeIndex(value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: (Colors.grey[900]),
        appBar: AppBar(
          shadowColor: Colors.amber,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: changeIndex,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
            backgroundColor: (Colors.transparent),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: '')
            ]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: double.infinity,
                height: screensize.height * 0.3,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'FIND THE BEST \nCOFFEE FOR YOU',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: 'Find your coffee...',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CoffeeTypes(
                              coffeeType: 'Cappicino',
                              ontap: () {},
                              isSelected: true),
                          CoffeeTypes(
                              coffeeType: 'Latte',
                              ontap: () {},
                              isSelected: false),
                          CoffeeTypes(
                              coffeeType: 'Milk',
                              ontap: () {},
                              isSelected: false),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CoffeeTile(
                          coffeeimagepath: 'assets/Cappuccino.jpg',
                          coffeename: 'Cappucino',
                          coffeprice: '4',
                          height: 250,),
                      CoffeeTile(
                          coffeeimagepath: 'assets/coffeee.jpeg',
                          coffeename: 'Coffee',
                          coffeprice: '5',
                          height:250 ,
                          ),
                      CoffeeTile(
                          coffeeimagepath: 'assets/latte.jpg',
                          coffeename: 'Latte',
                          coffeprice: '3',height: 250,),
                    ],
                  )),
            )
          ],
        ));
  }
}
