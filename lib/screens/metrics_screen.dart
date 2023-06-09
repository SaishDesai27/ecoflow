import 'package:Ecoflow/widgets/airQualityCard.dart';
import 'package:Ecoflow/widgets/emission_chart.dart';
import 'package:flutter/material.dart';

class MetricsScreen extends StatelessWidget {
  const MetricsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metrics'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                children: [
                  const AirQualityCard(),
                ],
              ),
              const EmissionsChart(),
            ],
          ),
        ),
      ),
    );
  }
}
