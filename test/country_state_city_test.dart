import 'package:country_state_city/country_state_city.dart';
import 'package:country_state_city/src/models/country.dart';
import 'package:country_state_city/src/models/state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('CountryStateCity.initAsync can execute', () async {
    final countryStateCity = CountryStateCity.instance;
    final countries = await countryStateCity.initAsync();

    expect(countries, TypeMatcher<List<Country>>());
  });

  group('CountryStateCity is initialized', () {
    final countryStateCity = CountryStateCity.instance;
    setUpAll(() async {
      await countryStateCity.initAsync();
    });

    test('The countries property has values', () {
      expect(countryStateCity.countries, const TypeMatcher<List<Country>>());
      expect(countryStateCity.countries, isNotNull);
      expect(countryStateCity.countries, isNotEmpty);
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
  });

  group('CountryStateCity is not initialized', () {
    final countryStateCity = CountryStateCity.instance;

    test('The countries property has no value', () {
      expect(
        countryStateCity.countries,
        isNull,
      );
    });

    test('getStatesByCountryIso2 throwsStateError', () {
      expect(
        () => countryStateCity.getStatesByCountryIso2('MY'),
        throwsStateError,
      );
    });
  });
}

/// Run [expect] on states.
///
/// Does not check if it is empty because a country might have no [State].
void _expectStates(List<State> states) {
  expect(states, TypeMatcher<List<State>>());
  expect(states, isNotNull);
}
