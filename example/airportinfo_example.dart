import 'dart:io' show Platform, exit;
import 'package:airportinfo/airportinfo.dart';

void main(List<String> args) async {
  // Get the endpoint host and API key from environment objects.
  var envHost = Platform.environment['RP_HOST'];
  var envKey = Platform.environment['RP_KEY'];

  if (envHost == null || envKey == null) {
    print('ERROR: The RP_HOST and RP_KEY environment objects are not set.');
    exit(0);
  }

  // Set the API key holder.
  var key = ApiKey(envHost, envKey);

  // Get and print the airport information.
  try {
    var airport = await AirportInfo.fetch(key, RequestType.icao, args[0]);

    if (airport != null) {
      print('${airport.name} is an airport located in ${airport.location}!');
    } else {
      print('No airport found for the provided code.');
    }
  } on InvalidCodeException {
    print('Code length is invalid.');
  }
}
