import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chart extends StatelessWidget {
  List<FlSpot> spots = [
    const FlSpot(0, 0),
    const FlSpot(3, 3),
    const FlSpot(4, 0),
    const FlSpot(5, 4),
    const FlSpot(6, 1),
    const FlSpot(7, 1),
    const FlSpot(8, 5),
    const FlSpot(9, 0)
  ];
  List<FlSpot> spots1 = [
    const FlSpot(0, 0),
    const FlSpot(3, 5),
    const FlSpot(4, 3),
    const FlSpot(5, 1),
    const FlSpot(6, 2),
    const FlSpot(7, 0),
    const FlSpot(8, 1),
    const FlSpot(9, 1)
  ];
  List<FlSpot> spots2 = [
    const FlSpot(0, 0),
    const FlSpot(3, 5),
    const FlSpot(4, 1),
    const FlSpot(5, 4),
    const FlSpot(6, 1),
    const FlSpot(7, 0),
    const FlSpot(8, 5),
    const FlSpot(9, 3)
  ];
  Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(LineChartData(
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            getDrawingVerticalLine: (vl) {
              return const FlLine(
                color: Colors.grey,
                strokeWidth: 1,
                dashArray: [1, 0],
              );
            },
            drawHorizontalLine: true,
            getDrawingHorizontalLine: (vl) {
              return const FlLine(
                color: Colors.grey,
                strokeWidth: 1,
                dashArray: [1, 0],
              );
            },
          ),
          titlesData: const FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
              ),
            ),
            bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.grey, width: 1),
          ),
          minX: 0,
          maxX: 9,
          minY: 0,
          maxY: 5,
          lineBarsData: [
            LineChartBarData(
              spots: spots.map((e) => FlSpot(e.x, e.y)).toList(),
              isCurved: true,
              color: Colors.greenAccent,
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
            LineChartBarData(
              spots: spots1,
              isCurved: true,
              color: Colors.purpleAccent,
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
            LineChartBarData(
              spots: spots2,
              isCurved: true,
              color: Colors.yellow,
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            )
          ])),
    );
  }
}
