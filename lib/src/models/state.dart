import 'package:country_state_city/src/models/city.dart';
import 'package:json_annotation/json_annotation.dart';

part 'state.g.dart';

/// The state of a country.
///
/// We use such name to prevent conflicting with Flutter `State`.
@JsonSerializable()
class CountryState {
  /// An Id that has no real world meaning.
  final int id;

  /// The state name.
  final String name;

  /// The ISO state code.
  @JsonKey(name: 'state_code')
  final String stateCode;

  /// The cities of this state.
  final List<City> cities;

  const CountryState({
    required this.id,
    required this.name,
    required this.stateCode,
    required this.cities,
  });

  factory CountryState.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);

  Map<String, dynamic> toJson() => _$StateToJson(this);
}
