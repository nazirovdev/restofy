import 'package:flutter/material.dart';

Widget heroSection({required String pictureId}) {
  return SizedBox(
    width: double.infinity,
    height: 220,
    child: ClipRRect(
      child: Image.network(
        pictureId,
        fit: BoxFit.cover,
      ),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
    ),
  );
}
