// ignore_for_file: public_member_api_docs

import 'package:bisim_app/product/model/network_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'marker_model.g.dart';

@JsonSerializable()
class Marker {
  Marker({
    required this.network,
  });

  factory Marker.fromJson(Map<String, dynamic> json) => _$MarkerFromJson(json);

  final Network network;

  Map<String, dynamic> toJson() => _$MarkerToJson(this);

  Marker copyWith({
    Network? network,
  }) =>
      Marker(
        network: network ?? this.network,
      );
}

enum Status { ACTIVE }
