import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final IconData icon;
  final double temperature;

  const HourlyForecastItem({
    super.key,
    required this.time,
    required this.icon,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Icon(
              icon,
              size: 32,
            ),
            Text(
              temperature.toString(),
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
