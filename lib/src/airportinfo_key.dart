/// Holds RapidAPI host and key information.
///
/// These two are necessary for to pass as headers
/// for the HTTP request.
class ApiKey {
  /// RapidAPI endpoint host.
  String host;

  /// RapidAPI endpoint key.
  String key;

  ApiKey(this.host, this.key);
}
