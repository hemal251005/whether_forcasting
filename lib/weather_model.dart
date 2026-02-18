class Weather {
  final String city;
  final double temp;
  final double windSpeed;

  Weather({
    required this.city,
    required this.temp,
    required this.windSpeed,
  });

  factory Weather.fromOpenMeteo(Map<String, dynamic> json, String city) {
    return Weather(
      city: city,
      temp: (json['current_weather']['temperature'] as num).toDouble(),
      windSpeed: (json['current_weather']['windspeed'] as num).toDouble(),
    );
  }
}
