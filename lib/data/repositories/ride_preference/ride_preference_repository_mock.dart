import '../../../model/ride_pref/ride_pref.dart';
import './ride_preference_repository.dart';

class RidePreferenceRepositoryMock extends RidePreferenceRepository{
  final List<RidePreference> _pastPrference = [];

  @override
  List<RidePreference> getPastPreferences(){
    return _pastPrference;
  }

  @override
  void addPreference(RidePreference preference){
    if(!_pastPrference.contains(preference)){
      _pastPrference.add(preference);
    }
  }
}