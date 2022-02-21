import 'package:flutter/material.dart';

Widget titleSectionDetail({required String title}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    ),
  );
}
