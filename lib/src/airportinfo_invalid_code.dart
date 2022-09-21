import 'airportinfo_request_type.dart';

/// Thrown when a provided code is invalid for the [RequestType] specified.
class InvalidCodeException implements Exception {
  String message() =>
      'The provided code is invalid for the query type selected.';
}
