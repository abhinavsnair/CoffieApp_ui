import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CoffeeTypes extends StatelessWidget {
  final String coffeeType;
  final  VoidCallback ontap;
  final bool isSelected;
  const CoffeeTypes({super.key, required this.coffeeType, required this.ontap,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(5),
        height: 30,
         child: Center(
          child: Text(coffeeType,
          style: TextStyle(
            fontSize: 18,
            color:isSelected? Colors.orange: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
