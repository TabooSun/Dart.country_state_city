library country_state_city;

import 'dart:convert';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:country_state_city/src/models/country.dart';
import 'package:country_state_city/src/models/state.dart';
import 'package:flutter/services.dart' show rootBundle;

export 'src/models/city.dart';
export 'src/models/country.dart';
export 'src/models/state.dart';
export 'src/models/timezone.dart';

/// The data is ported from
/// [here](https://github.com/dr5hn/countries-states-cities-database).
class CountryStateCity {
  static final CountryStateCity instance = CountryStateCity._();

  List<Country>? countries;

  CountryStateCity._();

  Future<List<Country>> initAsync() async {
    final resource = await rootBundle.loadString(
        'packages/country_state_city/lib/assets/countries_states_cities.json');

    countries = (jsonDecode(resource) as List)
        .map((e) => Country.fromJson(e))
        .toList(growable: false);

    return countries!;
  }

  List<State> getStatesByCountryIso2(String iso2) {
    if (countries == null) {
      throw StateError(
          '''CountryStateCity is not initialized. Call CountryStateCity.instance.initAsync to initialize.''');
    }

    return findCountryByIso2(iso2).states;
  }

  Country findCountryByIso2(String iso2) {
    return countries!
        .firstWhere((element) => element.iso2 == iso2.toUpperCase());
  }

  Country? tryFindCountryByIso2(String iso2) {
    return countries!
        .firstWhereOrNull((element) => element.iso2 == iso2.toUpperCase());
  }
}
