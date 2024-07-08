// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Network _$NetworkFromJson(Map<String, dynamic> json) => Network(
      company:
          (json['company'] as List<dynamic>).map((e) => e as String).toList(),
      href: json['href'] as String,
      id: json['id'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      name: json['name'] as String,
      stations: (json['stations'] as List<dynamic>)
          .map((e) => Station.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NetworkToJson(Network instance) => <String, dynamic>{
      'company': instance.company,
      'href': instance.href,
      'id': instance.id,
      'location': instance.location,
      'name': instance.name,
      'stations': instance.stations,
    };
