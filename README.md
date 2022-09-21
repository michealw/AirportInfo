<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
# AirportInfo

![Logo](https://raw.githubusercontent.com/michealw/AirportInfo/4e97d3bb3664486f6e5e67df0e93dc43c31c04d3/doc/logo.png)

[![Dart](https://github.com/michealw/AirportInfo/actions/workflows/dart.yml/badge.svg)](https://github.com/michealw/AirportInfo/actions/workflows/dart.yml)

Library for retrieving data from the [Airport Info API](https://rapidapi.com/Active-api/api/airport-info/) by Active API available via the [RapidAPI](https://rapidapi.com) service.

## Features

- Gets airport information in an easy to use format.

## Getting Started
- Get an API key from the [Airport Info API page](https://rapidapi.com/Active-api/api/airport-info/).

## Usage

```dart
import 'package:airportinfo/airportinfo.dart';

var key = ApiKey("<host>", "<API key>");

try {
    var airport = await AirportInfo.fetch(key, RequestType, "<airport code>");

    if (airport != null) {
        // Do whatever is needed with the data.
    } else {
        // Handle 
    }
} on InvalidCodeException {
print('Code length is invalid.');
}
```
`RequestType` can be either:
- `RequestType.iata` for three letter codes provided by the International Air Transport Association.
- `RequestType.icao` for four letter codes provided by the International Civil Aviation Organization.

## Issues
Issues can be submitted to the [GitHub repository](https://github.com/michealw/AirportInfo/issues).