import 'package:country_state_city/src/models/city.dart';
import 'package:json_annotation/json_annotation.dart';

part 'state.g.dart';

@JsonSerializable()
class State {
  final int id;

  final String name;

  @JsonKey(name: 'state_code')
  final String stateCode;

  final List<City> cities;

  State({
    required this.id,
    required this.name,
    required this.stateCode,
    required this.cities,
  });

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);

  Map<String, dynamic> toJson() => _$StateToJson(this);
}
