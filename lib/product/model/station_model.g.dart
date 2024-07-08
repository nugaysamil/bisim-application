// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Station _$StationFromJson(Map<String, dynamic> json) => Station(
      extra: Extra.fromJson(json['extra'] as Map<String, dynamic>),
      id: json['id'] as String,
      name: json['name'] as String,
      timestamp: json['timestamp'] as String,
      emptySlots: (json['emptySlots'] as num?)?.toInt() ?? 0,
      freeBikes: (json['freeBikes'] as num?)?.toInt() ?? 0,
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$StationToJson(Station instance) => <String, dynamic>{
      'emptySlots': instance.emptySlots,
      'extra': instance.extra,
      'freeBikes': instance.freeBikes,
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'name': instance.name,
      'timestamp': instance.timestamp,
    };

Extra _$ExtraFromJson(Map<String, dynamic> json) => Extra(
      uid: json['uid'] as String,
      slots: (json['slots'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ExtraToJson(Extra instance) => <String, dynamic>{
      'slots': instance.slots,
      'uid': instance.uid,
    };
