// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) {
  return Country(
    id: json['id'] as int,
    name: json['name'] as String,
    iso3: json['iso3'] as String,
    iso2: json['iso2'] as String,
    phoneCode: json['phone_code'] as String,
    capital: json['capital'] as String,
    currency: json['currency'] as String,
    currencySymbol: json['currency_symbol'] as String,
    tld: json['tld'] as String,
    native: json['native'] as String?,
    region: json['region'] as String,
    subregion: json['subregion'] as String,
    timezones: (json['timezones'] as List<dynamic>)
        .map((e) => Timezone.fromJson(e as Map<String, dynamic>))
        .toList(),
    emoji: json['emoji'] as String,
    emojiU: json['emojiU'] as String,
    states: (json['states'] as List<dynamic>)
        .map((e) => CountryState.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iso3': instance.iso3,
      'iso2': instance.iso2,
      'phone_code': instance.phoneCode,
      'capital': instance.capital,
      'currency': instance.currency,
      'currency_symbol': instance.currencySymbol,
      'tld': instance.tld,
      'native': instance.native,
      'region': instance.region,
      'subregion': instance.subregion,
      'timezones': instance.timezones,
      'emoji': instance.emoji,
      'emojiU': instance.emojiU,
      'states': instance.states,
    };
