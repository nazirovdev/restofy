import 'package:flutter/material.dart';

Widget ratingHelper(double rating) {
  if (rating >= 4.0 && rating <= 5.0) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.star,
          size: 16,
          color: Colors.green,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          rating.toString(),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ],
    );
  } else if (rating >= 3.0 && rating <= 3.9) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.star,
          size: 16,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          rating.toString(),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
      ],
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.star,
          size: 16,
          color: Colors.red,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          rating.toString(),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
