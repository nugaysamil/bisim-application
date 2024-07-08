// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'station_model.g.dart';

@JsonSerializable()
class Station {
  Station({
    required this.extra,
    required this.id,
    required this.name,
    required this.timestamp,
    this.emptySlots = 0,
    this.freeBikes = 0,
    this.latitude = 0.0,
    this.longitude = 0.0,
  });

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);

  final int emptySlots;
  final Extra extra;
  final int freeBikes;
  final String id;
  final double latitude;
  final double longitude;
  final String name;
  final String timestamp;

  Map<String, dynamic> toJson() => _$StationToJson(this);
}

@JsonSerializable()
class Extra {
  Extra({
    required this.uid,
    this.slots = 0,
  });

  factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);

  final int slots;
  final String uid;

  Map<String, dynamic> toJson() => _$ExtraToJson(this);
}
