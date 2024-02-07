import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceModel {
  final int id;
  final String name;
  final LatLng latLng;

  PlaceModel({
    required this.id,
    required this.name,
    required this.latLng,
  });
}

List<PlaceModel> places = [
  PlaceModel(
      id: 1,
      name: "ستاد المنصوره الرياضي",
      latLng: const LatLng(31.03585042450149, 31.394280195002942)),
  PlaceModel(
      id: 2,
      name: "مستشفي المنصورة العسكري",
      latLng: const LatLng(31.02114057185687, 31.396082639485396)),
  PlaceModel(
      id: 3,
      name: " معهد الدلتا العالي",
      latLng: const LatLng(31.07099666652889, 31.383237159308763)),
  PlaceModel(
      id: 4,
      name: "منيه سندوب",
      latLng: const LatLng(31.003952463160065, 31.37818590336271)),
];
