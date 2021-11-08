import 'package:json_annotation/json_annotation.dart';

part 'city.g.dart';

@JsonSerializable()
class City {
  /// An Id that has no real world meaning.
  final int id;

  /// The name of this city.
  final String name;

  /// The latitude of this city.
  final String latitude;

  /// The longitude of this city.
  final String longitude;

  const City({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
