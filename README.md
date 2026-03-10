# whether_forcasting
Weather forecasting is the scientific process of predicting future atmospheric conditions—such as temperature, rainfall, humidity, wind speed, and pressure for a specific place and time.
#Project Description

The Flutter Weather Forecast Application is a mobile application developed using the Flutter framework and Dart programming language. The application allows users to enter a city name and retrieve real-time weather information such as temperature and wind speed.

The application integrates the Open-Meteo Weather API to fetch live weather data. It demonstrates the use of API integration, asynchronous programming, JSON parsing, and modular architecture in Flutter development.

This project was developed as part of the ALA-3 (Advanced Learning Assignment) for demonstrating Flutter mobile application development and API communication.
#Features:-

Search weather by city name

Display current temperature

Display wind speed

Real-time weather data using API

Error handling for invalid city names

Simple and user-friendly interface
#Project Structure:-
flutter_weather_forecast/
│
├── lib/
│   ├── main.dart
│   ├── weather_model.dart
│   └── weather_service.dart
│
├── android/
├── ios/
├── test/
├── pubspec.yaml
└── README.md

#Application Workflow:-

User enters a city name.

The application sends a request to the Geocoding API.

The API returns latitude and longitude of the city.

The weather API is called using these coordinates.

Weather data is returned in JSON format.

The JSON response is converted into a Weather model.

The UI displays temperature and wind speed.

#API Used
Open-Meteo Geocoding API

Used to convert city name into latitude and longitude.
https://geocoding-api.open-meteo.com/v1/search?name=Rajkot&count=1

Open-Meteo Weather API

Used to fetch current weather information.
https://api.open-meteo.com/v1/forecast?latitude=22.30&longitude=70.80&current_weather=true

Screenshots

You can add screenshots of your application here.
Example:-
Home Screen

Weather Result Screen
