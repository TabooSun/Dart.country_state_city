// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timezone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timezone _$TimezoneFromJson(Map<String, dynamic> json) {
  return Timezone(
    zoneName: json['zoneName'] as String,
    gmtOffset: json['gmtOffset'] as int,
    gmtOffsetName: json['gmtOffsetName'] as String,
    abbreviation: json['abbreviation'] as String,
    tzName: json['tzName'] as String,
  );
}

Map<String, dynamic> _$TimezoneToJson(Timezone instance) => <String, dynamic>{
      'zoneName': instance.zoneName,
      'gmtOffset': instance.gmtOffset,
      'gmtOffsetName': instance.gmtOffsetName,
      'abbreviation': instance.abbreviation,
      'tzName': instance.tzName,
    };
