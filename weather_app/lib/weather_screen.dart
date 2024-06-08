import 'dart:ui';

import 'package:flutter/material.dart';

import 'additional_info_item.dart';
import 'hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: const [
                          Text(
                            '300.674 F',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Cloudy',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // weather forecast cards
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Weather Forecast',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  HourlyForecastItem(
                    time: '09:00',
                    icon: Icons.cloud,
                    temperature: 273.2,
                  ),
                  HourlyForecastItem(
                    time: '12:00',
                    icon: Icons.sunny,
                    temperature: 273.2,
                  ),
                  HourlyForecastItem(
                    time: '03:00',
                    icon: Icons.cloudy_snowing,
                    temperature: 273.2,
                  ),
                  HourlyForecastItem(
                    time: '06:00',
                    icon: Icons.cloud,
                    temperature: 273.2,
                  ),
                  HourlyForecastItem(
                    time: '09:00',
                    icon: Icons.sunny,
                    temperature: 273.2,
                  ),
                  HourlyForecastItem(
                    time: '12:00',
                    icon: Icons.cloudy_snowing,
                    temperature: 273.2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // additional info
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Additional Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                AdditionalInfoItem(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  value: 94,
                ),
                AdditionalInfoItem(
                  icon: Icons.air,
                  label: 'Wind Speed',
                  value: 94,
                ),
                AdditionalInfoItem(
                  icon: Icons.beach_access,
                  label: 'Pressure',
                  value: 94,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
