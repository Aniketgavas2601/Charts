import 'package:flutter/material.dart';
import 'package:pie_chart/widgets/cartesian_chart_widget.dart';
import 'package:pie_chart/widgets/pie_chart.dart';
import 'package:pie_chart/widgets/radial_chart.dart';


class ButtonWidet extends StatelessWidget {
  const ButtonWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const CartesianChartWidget(),));
              }, child: const Text("Cartesian "),),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const PiechartWidget(),));
              }, child: const Text("pie Chart"),),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const RadialchartWidget(),));
              }, child: const Text("Radial"),),
            ],
          )
        ],
      ),
    );
  }
}