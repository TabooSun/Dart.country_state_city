import 'package:country_state_city/src/models/state.dart';
import 'package:country_state_city/src/models/timezone.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  /// An Id that has no real world meaning.
  final int id;

  /// The country name.
  final String name;

  /// The ISO 3166-1 alpha-3 country code.
  final String iso3;

  /// The ISO 3166-1 alpha-2 country code.
  final String iso2;

  /// The phone dialing code.
  @JsonKey(name: 'phone_code')
  final String phoneCode;

  /// The capital of this country.
  final String capital;

  /// The ISO 4217 currency code.
  ///
  /// Example: USD.
  final String currency;

  /// The currency symbol.
  ///
  /// Example: $.
  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;

  /// The top-level domain of this country.
  ///
  /// Example: .us.
  final String tld;

  final String? native;

  /// The region of this country.
  ///
  /// Check [here](https://www.fmprc.gov.cn/mfa_eng/gjhdq_665435/) for more detail.
  final String region;

  /// The subregion of this country.
  ///
  /// Check [here](https://en.wikipedia.org/wiki/Subregion) for more detail.
  final String subregion;

  /// The time zone for this country.
  ///
  /// Different areas of a country might have different time zones.
  final List<Timezone> timezones;

  /// The flat emoji of this country.
  ///
  /// Example: 🇺🇸.
  final String emoji;

  /// The emojiU of this country.
  ///
  /// Example: U+1F1FA U+1F1F8
  final String emojiU;

  /// The states of the country.
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
