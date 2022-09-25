import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeimagepath;
  final String coffeename;
  final String coffeprice;
  final double height;
  const CoffeeTile(
      {super.key,
      required this.coffeeimagepath,
      required this.coffeename,
      required this.coffeprice,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 500,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.black87),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Image.asset(coffeeimagepath, height: height,),
                ),
                const SizedBox(height: 5,),
                Text(
                  coffeename,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(''),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$' + coffeprice),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(4)),
                        child: const Icon(Icons.add),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
