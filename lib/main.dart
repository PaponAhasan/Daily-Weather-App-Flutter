import 'package:daily_weather_app/pages/WeatherHomePage.dart';
import 'package:daily_weather_app/provider/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => WeatherProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          brightness: Brightness.dark
        ),
        useMaterial3: true,
      ),
      home: const WeatherHomePage()
    );
  }
}

