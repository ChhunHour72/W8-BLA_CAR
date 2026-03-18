import 'location_repository.dart';
import '../../dummy_data.dart';
import '../../../model/ride/locations.dart';

class LocationRepositorysMock extends LocationRepository{
  @override
  List<Location> getLocations(){
    return fakeLocations;
  }
}