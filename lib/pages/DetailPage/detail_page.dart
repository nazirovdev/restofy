import 'package:flutter/material.dart';
import 'package:restofy/model/restaurant_model.dart';
import 'package:restofy/pages/DetailPage/components/badge_me.dart';
import 'package:restofy/pages/DetailPage/components/card_drink.dart';
import 'package:restofy/pages/DetailPage/components/card_food.dart';
import 'package:restofy/pages/DetailPage/components/city_section.dart';
import 'package:restofy/pages/DetailPage/components/description_section.dart';
import 'package:restofy/pages/DetailPage/components/hero_section.dart';
import 'package:restofy/pages/DetailPage/components/title_section_detail.dart';

class DetailPage extends StatelessWidget {
  final RestaurantModel restaurant;
  const DetailPage({Key? key, required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List foods = restaurant.menus['foods'];
    List drinks = restaurant.menus['drinks'];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heroSection(pictureId: restaurant.pictureId),
            const SizedBox(
              height: 20,
            ),
            titleSectionDetail(title: restaurant.name),
            const SizedBox(
              height: 10,
            ),
            citySection(city: restaurant.city),
            const SizedBox(
              height: 20,
            ),
            badgeMe(text: 'Description'),
            const SizedBox(
              height: 10,
            ),
            descriptionSection(desc: restaurant.description),
            const SizedBox(
              height: 20,
            ),
            badgeMe(text: 'Foods'),
            const SizedBox(
              height: 10,
            ),
            // List.generate()
            Center(
              child: Wrap(
                children: [
                  ...foods.map((food) {
                    return cardFood(food: food);
                  })
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            badgeMe(text: 'Drinks'),
            // List.generate()
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Wrap(
                children: [
                  ...drinks.map((drink) {
                    return cardDrink(drink: drink);
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
