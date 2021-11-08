import 'package:country_state_city/src/models/city.dart';
import 'package:json_annotation/json_annotation.dart';

part 'state.g.dart';

@JsonSerializable()
class State {
  /// An Id that has no real world meaning.
  final int id;

  /// The state name.
  final String name;

  /// The ISO state code.
  @JsonKey(name: 'state_code')
  final String stateCode;

  /// The cities of this state.
  final List<City> cities;

  const State({
    required this.id,
    required this.name,
    required this.stateCode,
    required this.cities,
  });

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);

  Map<String, dynamic> toJson() => _$StateToJson(this);
}
