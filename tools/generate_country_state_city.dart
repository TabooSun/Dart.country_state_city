import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:country_state_city/country_state_city.dart';
import 'package:dart_style/dart_style.dart';

Future<void> main() async {
  const dataFilePath = 'lib/assets/countries_states_cities.json';
  const outputFilePath = 'lib/data/countries_states_cities_data.dart';

  final dataFile = File(dataFilePath);
  final outputFile = File(outputFilePath);
  await outputFile.create(recursive: true);

  final countries = (jsonDecode(await dataFile.readAsString()) as List)
      .map<Country>((e) => Country.fromJson(e))
      .toList(growable: false);

  // final locales = ['es', 'pt', 'en'].map((l) => refer('Country').newInstance(
  //       [],
  //     ));
  // final literal = literalList(locales);
  // print(literal);
  /*final allocator = Allocator()
    ..allocate(Reference((#Country).toString(),
        'package:country_state_city/country_state_city.dart'));
  allocator.imports.forEach((element) {
    print(element);
  });*/
  final countriesConstList =
      literalList(countries.map((country) => refer('Country').constInstance(
            [],
            {
              'id': literal(country.id),
              'name': literal(country.name),
              'iso3': literal(country.iso3),
              'iso2': literal(country.iso2),
              'phoneCode': literal(country.phoneCode),
              'capital': literal(country.capital),
              'currency': literal(country.currency),
              'currencySymbol': literal(country.currencySymbol),
              'tld': literal(country.tld),
              'native': literal(country.native),
              'region': literal(country.region),
              'subregion': literal(country.subregion),
              'timezones': literalList(country.timezones.map(
                (timezone) => refer('Timezone').constInstance(
                  [],
                  {
                    'zoneName': literal(timezone.zoneName),
                    'gmtOffset': literal(timezone.gmtOffset),
                    'gmtOffsetName': literal(timezone.gmtOffsetName),
                    'abbreviation': literal(timezone.abbreviation),
                    'tzName': literal(timezone.tzName),
                  },
                ),
              )),
              'emoji': literal(country.emoji),
              'emojiU': literal(country.emojiU),
              'states': literalList(country.states.map(
                (state) => refer('State').constInstance(
                  [],
                  {
                    'id': literal(state.id),
                    'name': literal(state.name),
                    'stateCode': literal(state.stateCode),
                    'cities': literalList(state.cities.map(
                      (city) => refer('City').constInstance(
                        [],
                        {
                          'id': literal(city.id),
                          'name': literal(city.name),
                          'latitude': literal(city.latitude),
                          'longitude': literal(city.longitude),
                        },
                      ),
                    )),
                  },
                ),
              )),
            },
          )));
  final variable = countriesConstList.assignConst('_countries').statement;

  final result = variable.accept(DartEmitter());
  // print('Start formatting generated code...');
  // final formattedResult = DartFormatter().format(result.toString());
  print('Start writing formatted code to file.');
  await outputFile.writeAsString(result.toString());
}
