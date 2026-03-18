
import 'package:blabla/data/repositories/location/location_repository.dart';

import 'package:flutter/material.dart';
import 'ui/screens/home/home_screen.dart';
import 'ui/theme/theme.dart';
import 'package:provider/provider.dart';
import 'data/repositories/location/location_repository_mock.dart';
import 'ui/states/ride_preference_state.dart';
import 'data/repositories/ride_preference/ride_preference_repository.dart';
import 'data/repositories/ride_preference/ride_preference_repository_mock.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<LocationRepository>(
          create: (context) => LocationRepositorysMock(),
        ),
        
        Provider<RidePreferenceRepository>(
          create: (context) => RidePreferenceRepositoryMock(),
        ),
        
        ChangeNotifierProvider<RidePreferenceState>(
          create: (context) {
            var repo = Provider.of<RidePreferenceRepository>(context, listen: false);
            return RidePreferenceState(repository: repo);
          },
        ),
      ],
      child: const BlaBlaApp(),
    ),
  ); 
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
