import 'package:flutter/material.dart';

Widget cardFood({required Map<String, dynamic> food}) {
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
            Icons.fastfood,
            size: 50,
            color: Colors.grey[400],
          ),
          Text(
            food['name'],
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
