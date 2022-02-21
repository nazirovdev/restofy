import 'package:flutter/material.dart';

Widget cardDrink({required Map<String, dynamic> drink}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.coffee,
            size: 50,
            color: Colors.grey[400],
          ),
          Text(
            drink['name'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
