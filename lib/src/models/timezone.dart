import 'package:json_annotation/json_annotation.dart';

part 'timezone.g.dart';

@JsonSerializable()
class Timezone {
  final String zoneName;

  final int gmtOffset;

  final String gmtOffsetName;

  final String abbreviation;

  final String tzName;

  const Timezone({
    required this.zoneName,
    required this.gmtOffset,
    required this.gmtOffsetName,
    required this.abbreviation,
    required this.tzName,
  });

  factory Timezone.fromJson(Map<String, dynamic> json) =>
      _$TimezoneFromJson(json);

  Map<String, dynamic> toJson() => _$TimezoneToJson(this);
}
