import 'dart:io' show Platform;
import 'package:airportinfo/airportinfo.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    var envHost = Platform.environment['RP_HOST'];
    var envKey = Platform.environment['RP_KEY'];

    setUp(() {
      // Additional setup goes here.
    });

    test('Testing IATA code', () async {
      if (envHost != null && envKey != null) {
        var key = ApiKey(envHost, envKey);
        var airport = await AirportInfo.fetch(key, RequestType.iata, 'CMH');
        expectLater(airport?.iata, 'CMH');
      } else {
        fail('Host and/or key not in environment variables.');
      }
    });

    test('Testing ICAO code', () async {
      if (envHost != null && envKey != null) {
        var key = ApiKey(envHost, envKey);
        var airport = await AirportInfo.fetch(key, RequestType.icao, 'KCMH');
        expectLater(airport?.icao, 'KCMH');
      } else {
        fail('Host and/or key not in environment variables.');
      }
    });

    test('Testing invalid code', () async {
      if (envHost != null && envKey != null) {
        var key = ApiKey(envHost, envKey);
        await expectLater(AirportInfo.fetch(key, RequestType.icao, 'CM'),
            throwsA(isA<InvalidCodeException>()));
      } else {
        fail('Host and/or key not in environment variables.');
      }
    });
  });
}
