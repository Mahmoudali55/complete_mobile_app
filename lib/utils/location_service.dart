import 'package:location/location.dart';

class LocationService {
  Location location = Location();
  Future<bool> checkAndRequestLocationServices() async {
    var isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      if (!isServiceEnabled) {
        return false;
      }
    }
    return true;
  }

  Future<bool> checkAndRequestLocationPermission() async {
    var permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.deniedForever) {
      return false;
    }
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
      permissionStatus == PermissionStatus.granted;
    }
    return true;
  }

  void getRealtimeLocationData(void Function(LocationData)? onData) {
    location.onLocationChanged.listen(onData);
  }
}
