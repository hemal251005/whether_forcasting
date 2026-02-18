import 'dart:convert';
import 'package:http/http.dart' as http;
import 'weather_model.dart';

class WeatherService {

  /// Step 1: Get latitude & longitude from city name
  Future<Map<String, double>> _getCoordinates(String city) async {
    final geoUrl = Uri.parse(
      'https://geocoding-api.open-meteo.com/v1/search?name=$city&count=1',
    );

    final geoResponse = await http.get(geoUrl);

    if (geoResponse.statusCode == 200) {
      final geoData = jsonDecode(geoResponse.body);

      if (geoData['results'] != null && geoData['results'].length > 0) {
        return {
          'lat': geoData['results'][0]['latitude'],
          'lon': geoData['results'][0]['longitude'],
        };
      } else {
        throw Exception('City not found');
      }
    } else {
      throw Exception('Geocoding failed');
    }
  }

  /// Step 2: Fetch weather using coordinates
  Future<Weather> fetchWeather(String city) async {
    final coords = await _getCoordinates(city);

    final weatherUrl = Uri.parse(
      'https://api.open-meteo.com/v1/forecast'
          '?latitude=${coords['lat']}'
          '&longitude=${coords['lon']}'
          '&current_weather=true',
    );

    final response = await http.get(weatherUrl);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Weather.fromOpenMeteo(data, city);
    } else {
      throw Exception('Weather fetch failed');
    }
  }
}
