import 'package:bisim_app/product/model/location_model.dart';
import 'package:bisim_app/product/model/station_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'network_model.g.dart';

@JsonSerializable()
class Network {
  Network({
    required this.company,
    required this.href,
    required this.id,
    required this.location,
    required this.name,
    required this.stations,
  });

  factory Network.fromJson(Map<String, dynamic> json) =>
      _$NetworkFromJson(json);

  final List<String> company;
  final String href;
  final String id;
  final Location location;
  final String name;
  final List<Station> stations;

  Map<String, dynamic> toJson() => _$NetworkToJson(this);
}
