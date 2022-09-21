class Airport {
  int? id;

  /// Three-letter code issued by the International Air Transport Association.
  String? iata;

  /// Four-letter code issued by the International Civil Aviation Organization.
  String? icao;
  String? name;

  /// Location of the airport without address information.
  String? location;
  String? streetNumber;
  String? street;
  String? city;
  String? county;
  String? state;

  /// Country code in ISO 3166-2 format.
  String? countryIso;
  String? country;
  String? postalCode;

  /// Public phone number for the airport.
  String? phone;
  double? latitude;
  double? longitude;
  int? uct;
  String? website;

  Airport(
      {this.id,
      this.iata,
      this.icao,
      this.name,
      this.location,
      this.streetNumber,
      this.street,
      this.city,
      this.county,
      this.state,
      this.countryIso,
      this.country,
      this.postalCode,
      this.phone,
      this.latitude,
      this.longitude,
      this.uct,
      this.website});

  /// Converts a JSON object to an Airport object.
  Airport.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iata = json['iata'];
    icao = json['icao'];
    name = json['name'];
    location = json['location'];
    streetNumber = json['street_number'];
    street = json['street'];
    city = json['city'];
    county = json['county'];
    state = json['state'];
    countryIso = json['country_iso'];
    country = json['country'];
    postalCode = json['postal_code'];
    phone = json['phone'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    uct = json['uct'];
    website = json['website'];
  }
}
