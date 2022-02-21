import 'package:flutter/material.dart';

Widget badgeMe({required String text}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Container(
      width: 100,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey[900],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
