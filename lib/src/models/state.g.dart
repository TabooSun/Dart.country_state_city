// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryState _$StateFromJson(Map<String, dynamic> json) {
  return CountryState(
    id: json['id'] as int,
    name: json['name'] as String,
    stateCode: json['state_code'] as String,
    cities: (json['cities'] as List<dynamic>)
        .map((e) => City.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$StateToJson(CountryState instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state_code': instance.stateCode,
      'cities': instance.cities,
    };
