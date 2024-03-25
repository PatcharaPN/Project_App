import 'package:flutter/material.dart';
import 'package:flutter_finalproject/presentation/pages/widgets/gradiantColor.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../core/theme/app_pallete.dart';
import '../../../data/demoDB.dart';
import '../../../data/model.dart';

class DeviceWidgets extends StatefulWidget {
  final DBDemo dbDemo;

  const DeviceWidgets({super.key, required this.dbDemo});

  @override
  State<DeviceWidgets> createState() => _DeviceWidgetsState();
}

class _DeviceWidgetsState extends State<DeviceWidgets> {
  @override
  Widget build(BuildContext context) {
    final models = widget.dbDemo.getAllModels();

    return Expanded(
      child: models.isEmpty //Check if device is empty or not connected
          ? const Center(
              child: Text(
                'No devices found',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(73, 255, 255, 255)),
              ),
            )
          : ListView.builder(
              itemCount: models.length,
              itemBuilder: (context, index) {
                Model model = models[index]; //Battery Indicator
                double batterypercent = model.battery / 100;
                return Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/configpage');
                    },
                    child: GradientColor(
                      colors: const [
                        AppPallete.gradientUI1,
                        AppPallete.gradientUI2
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      model.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.0,
                                      ),
                                    ),
                                    Text(
                                      model.ssid,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 150.0),
                              Flexible(
                                flex: 1,
                                child: CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 6.0,
                                  animation: true,
                                  percent: batterypercent,
                                  center: Text(
                                    "${model.battery}%", //Battery Percent
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: AppPallete.progressColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
