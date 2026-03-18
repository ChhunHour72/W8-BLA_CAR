import 'package:flutter/material.dart';

import '../../model/ride_pref/ride_pref.dart';
import '../../data/repositories/ride_preference/ride_preference_repository.dart'; 
class RidePreferenceState extends ChangeNotifier {
  
  final RidePreferenceRepository repository;
  RidePreference? currentPreference;

  RidePreferenceState({required this.repository});

  List<RidePreference> get pastPreferences => repository.getPastPreferences();

  void updatePreference(RidePreference newPreference) {
    
    if (currentPreference != newPreference) {
      currentPreference = newPreference;
      repository.addPreference(newPreference);
      notifyListeners(); 
    }
  }
}