import 'package:flutter/material.dart';

Widget titleSection(String title, String subtitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        subtitle,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: Colors.blue,
        ),
      ),
    ],
  );
}
