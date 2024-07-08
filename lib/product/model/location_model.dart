// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class Location {
  Location({
    required this.city,
    required this.country,
    required this.latitude,
    required this.longitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  final String city;
  final String country;
  final double latitude;
  final double longitude;

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  Location copyWith({
    String? city,
    String? country,
    double? latitude,
    double? longitude,
  }) =>
      Location(
        city: city ?? this.city,
        country: country ?? this.country,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );
}
