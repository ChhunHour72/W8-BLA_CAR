import '../../../../model/ride_pref/ride_pref.dart';
import '../../../states/ride_preference_state.dart';

class HomeViewModel {
  final RidePreferenceState state;

  HomeViewModel(this.state);

  RidePreference? get currentPreference => state.currentPreference;

  List<RidePreference> get history => state.pastPreferences.reversed.toList();

  void setPreference(RidePreference preference) {
    state.updatePreference(preference);
  }
}