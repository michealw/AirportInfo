import 'airportinfo_request_type.dart';

/// Checks for a valid airport identifier code.
///
/// Returns false if the provided code
/// does not match the format for the specified [RequestType].
bool isCodeValid(String code, RequestType type) {
  switch (type) {
    case RequestType.iata:
      {
        if (code.length == 3) {
          return true;
        } else {
          return false;
        }
      }

    case RequestType.icao:
      {
        if (code.length == 4) {
          return true;
        } else {
          return false;
        }
      }
  }
}
