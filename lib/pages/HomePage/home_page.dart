import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:restofy/model/restaurant_model.dart';
import 'package:restofy/pages/HomePage/components/resto_card.dart';
import 'package:restofy/pages/HomePage/components/title_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/data/restaurants.json'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text(
                  'Loading...',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            } else {
              if (snapshot.hasData) {
                List<RestaurantModel> restaurant =
                    parseRestaurant(snapshot.data.toString());
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        titleSection(
                          'Restofy',
                          'Temukan restoran favorit anda',
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ...List.generate(
                          10,
                          (index) => GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/detail-page',
                                arguments: restaurant[index],
                              );
                            },
                            child: restoCard(
                              imgPicture: restaurant[index].pictureId,
                              name: restaurant[index].name,
                              city: restaurant[index].city,
                              rating: restaurant[index].rating,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: Text('Gagal memuat data'),
                );
              }
            }
          },
        ),
      ),
    );
  }
}
