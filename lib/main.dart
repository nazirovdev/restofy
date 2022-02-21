import 'package:flutter/material.dart';
import 'package:restofy/model/restaurant_model.dart';
import 'package:restofy/pages/DetailPage/detail_page.dart';
import 'package:restofy/pages/HomePage/home_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restofy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/detail-page': (context) => DetailPage(
            restaurant:
                ModalRoute.of(context)?.settings.arguments as RestaurantModel),
      },
    );
  }
}
