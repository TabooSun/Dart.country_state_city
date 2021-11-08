import 'package:json_annotation/json_annotation.dart';

part 'timezone.g.dart';

@JsonSerializable()
class Timezone {
  /// The timezone name.
  ///
  /// Example: America/New_York.
  final String zoneName;

  /// The gmt offset.
  final int gmtOffset;

  /// The gmt offset name.
  final String gmtOffsetName;

  /// The abbreviation of this timezone.
  final String abbreviation;

  /// The timezone name.
  ///
  /// Example: Eastern Standard Time (North America
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
