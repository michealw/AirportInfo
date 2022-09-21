import 'dart:convert';

import 'package:http/http.dart' as http;

import 'airportinfo_check_code.dart';
import 'airportinfo_invalid_code.dart';
import 'airportinfo_key.dart';
import 'airportinfo_model.dart';
import 'airportinfo_request_type.dart';

class AirportInfo {
  /// Attemps to retrieve the [Airport] data for the selected [type] and [code].
  ///
  /// Returns null if an airport could not be found. Throws an [InvalidCodeException]
  /// if the code does not meet the length requirement for the selected type.
  static Future<Airport?> fetch(
      ApiKey key, RequestType type, String code) async {
    if (!isCodeValid(code, type)) {
      throw InvalidCodeException();
    }

    final url = Uri.parse(
        'https://airport-info.p.rapidapi.com/airport?${type.name}=$code');

    final response = await http.get(url, headers: {
      "X-RapidAPI-Host": key.host,
      "X-RapidAPI-Key": key.key,
    });

    if (response.statusCode == 200) {
      var airport = Airport.fromJson(jsonDecode(response.body));
      if (airport.id != null) {
        return airport;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}
