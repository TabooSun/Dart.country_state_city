import 'package:country_state_city/country_state_city.dart';
import 'package:country_state_city/src/models/country.dart';
import 'package:country_state_city/src/models/state.dart';
import 'package:test/test.dart';

void main() {
  test('countries should be type List<Country>', () async {
    final countryStateCity = CountryStateCity.instance;
    final countries = countryStateCity.countries;

    expect(countries, TypeMatcher<List<Country>>());
  });

  group('CountryStateCity query', () {
    final countryStateCity = CountryStateCity.instance;

    test('The countries property has values', () {
      expect(countryStateCity.countries, isNotNull);
      expect(countryStateCity.countries, isNotEmpty);
      expect(countryStateCity.countries, const TypeMatcher<List<Country>>());
    });

    test(
        'getStatesByCountryIso2 correctly return states when iso2 is '
        'uppercase', () {
      final states = countryStateCity.getStatesByCountryIso2('MY');

      _expectStates(states);
    });

    test(
        'getStatesByCountryIso2 correctly return states when iso2 is '
        'lowercase', () {
      final states = countryStateCity.getStatesByCountryIso2('my');

      _expectStates(states);
    });

    test('findCountryByIso2 should return country when iso2 is valid', () {
      final country = countryStateCity.tryFindCountryByIso2('MY');

      expect(country, isNotNull);
      expect(country, const TypeMatcher<Country>());
    });

    test('findCountryByIso2 should return null when iso2 is invalid', () {
      final country = countryStateCity.tryFindCountryByIso2('');

      expect(country, isNull);
    });
  });
}

/// Run [expect] on states.
///
/// Does not check if it is empty because a country might have no [State].
void _expectStates(List<State> states) {
  expect(states, isNotNull);
  expect(states, const TypeMatcher<List<State>>());
}
