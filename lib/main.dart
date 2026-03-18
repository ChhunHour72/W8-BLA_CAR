
import 'package:blabla/data/repositories/location/location_repository.dart';

import 'package:flutter/material.dart';
import 'ui/screens/home/home_screen.dart';
import 'ui/theme/theme.dart';
import 'package:provider/provider.dart';
import 'data/repositories/location/location_repository_mock.dart';


void main() {

   runApp(Provider<LocationRepository>(
      create: (context) => LocationRepositorysMock(),
      child: const BlaBlaApp(),
    ),); 
}


class BlaBlaApp extends StatelessWidget {

 
  const BlaBlaApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: blaTheme,
      home: Scaffold(body: HomeScreen()),
    );
  }
}
