import 'package:flutter/material.dart';
import 'package:pasket_pool/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const PointsCounter(),
    );
  }
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoint = 0;
  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Points Counter'),
      ),

      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF616161),
                    ),
                  ),
                  Text('$teamAPoint', style: const TextStyle(fontSize: 150)),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamAPoint++;
                      });
                    },
                    textButton: 'Add 1 Point',
                  ),
                  const SizedBox(height: 15),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamAPoint += 2;
                      });
                    },
                    textButton: 'Add 2 Point',
                  ),
                  const SizedBox(height: 15),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamAPoint += 3;
                      });
                    },
                    textButton: 'Add 3 Point',
                  ),
                ],
              ),

              const SizedBox(width: 50, height: 400, child: VerticalDivider()),

              Column(
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF616161),
                    ),
                  ),
                  Text('$teamBPoint', style: const TextStyle(fontSize: 150)),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamBPoint++;
                      });
                    },
                    textButton: 'Add 1 Point',
                  ),
                  const SizedBox(height: 15),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamBPoint += 2;
                      });
                    },
                    textButton: 'Add 2 Point',
                  ),
                  const SizedBox(height: 15),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamBPoint += 3;
                      });
                    },
                    textButton: 'Add 3 Point',
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {
              setState(() {
                teamAPoint = 0;
                teamBPoint = 0;
              });
            },
            textButton: 'Reset',
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
