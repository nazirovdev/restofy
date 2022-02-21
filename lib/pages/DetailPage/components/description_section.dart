import 'package:flutter/material.dart';

Widget descriptionSection({required String desc}) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 20,
      right: 20,
    ),
    child: Text(
      desc,
      textAlign: TextAlign.justify,
    ),
  );
}
