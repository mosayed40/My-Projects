import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue[500]!, Colors.blue[100]!],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Alexandria',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'updated at 23:46',
            style: TextStyle(fontSize: 24, color: Colors.grey[900]),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/images/cloudy.png', width: 100, height: 100),
              SizedBox(width: 16),
              Text('30°C', style: TextStyle(fontSize: 48)),
              Column(
                children: [
                  Text(
                    'maxtemp: 32°C',
                    style: TextStyle(fontSize: 16, color: Colors.grey[900]),
                  ),
                  Text(
                    'mintemp: 28°C',
                    style: TextStyle(fontSize: 16, color: Colors.grey[900]),
                  ),
                ],
              ),
            ],
          ),
          Text(
            'Ligh Rain',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
