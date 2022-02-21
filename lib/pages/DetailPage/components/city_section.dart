import 'package:flutter/material.dart';

Widget citySection({required String city}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Row(
      children: [
        const Icon(
          Icons.location_on,
          size: 18,
          color: Colors.grey,
        ),
        Text(
          city,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}
