import 'package:country_state_city/src/models/state.dart';
import 'package:country_state_city/src/models/timezone.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  final int id;

  final String name;

  final String iso3;

  final String iso2;

  @JsonKey(name: 'phone_code')
  final String phoneCode;

  final String capital;

  final String currency;

  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;

  final String tld;

  final String? native;

  final String region;

  final String subregion;

  final List<Timezone> timezones;

  final String emoji;

  final String emojiU;

  final List<State> states;

  const Country({
    required this.id,
    required this.name,
    required this.iso3,
    required this.iso2,
    required this.phoneCode,
    required this.capital,
    required this.currency,
    required this.currencySymbol,
    required this.tld,
    required this.native,
    required this.region,
    required this.subregion,
    required this.timezones,
    required this.emoji,
    required this.emojiU,
    required this.states,
  });

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
