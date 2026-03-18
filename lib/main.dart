
import 'package:blabla/data/repositories/location/location_repository.dart';
import 'package:blabla/data/repositories/ride/ride_repository.dart';
import 'package:blabla/data/repositories/ride_preference/ride_preference_repository.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';
import 'ui/screens/home/home_screen.dart';
import 'ui/theme/theme.dart';

import 'data/repositories/location/location_repository_mock.dart';
import 'data/repositories/ride_preference/ride_preference_repository_mock.dart';
import 'data/repositories/ride/ride_repository_mock.dart';

void main() {

  final locationRepository = LocationRepositorysMock();
  final ridePreferenceRepository = RidePreferenceRepositoryMock();
  final rideRepository = RideRepositoryMock();

   runApp(BlaBlaApp(
    locationRepository : locationRepository,
    ridePreferenceRepository : ridePreferenceRepository,
    rideRepository : rideRepository,
   )); 
}


class BlaBlaApp extends StatelessWidget {

  final LocationRepositorysMock locationRepository;
  final RidePreferenceRepositoryMock ridePreferenceRepository;
  final RideRepository rideRepository;
  const BlaBlaApp({
    super.key,
    required this.locationRepository,
    required this.ridePreferenceRepository,
    required this.rideRepository
    });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: blaTheme,
      home: Scaffold(body: HomeScreen()),
    );
  }
}
