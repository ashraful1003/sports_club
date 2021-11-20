import 'package:flutter/material.dart';
import 'package:sports_club/screens/favourite_player.dart';
import 'package:sports_club/screens/home.dart';
import 'package:sports_club/screens/next_match_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "next_match_details": (BuildContext context) => NextMatchDetails(),
        "home": (BuildContext context) => Home(),
        "favourite_player": (BuildContext context) => FavouritePlayer(),
      },
      home: FavouritePlayer(),
    );
  }
}
