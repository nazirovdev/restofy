import 'package:flutter/material.dart';
import 'package:restofy/pages/HomePage/components/rating_helper.dart';

Widget restoCard({
  required String imgPicture,
  required String name,
  required String city,
  required double rating,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 12,
    ),
    child: SizedBox(
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: double.infinity,
                child: Image.network(
                  imgPicture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 3,
                        ),
                        child: Text(
                          name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            city,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ratingHelper(rating),
                ],
              )),
        ],
      ),
    ),
  );
}
