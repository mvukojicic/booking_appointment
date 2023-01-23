import 'package:book_repair/screens/appointment_screen/widgets/appointment_car_info.dart';
import 'package:book_repair/screens/appointment_screen/widgets/appointment_date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  late int currentStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zakazivanje'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 12, right: 12),
            child: StepProgressIndicator(
              totalSteps: 4,
              currentStep: currentStepIndex,
              selectedColor: Colors.blueAccent,
              size: 36,
              unselectedColor: Colors.lightBlueAccent.withOpacity(0.2),
              customStep: (index, color, _) => color == Colors.blueAccent
                  ? ColoredBox(
                      color: color,
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    )
                  : ColoredBox(
                      color: color,
                      child: const Icon(
                        Icons.remove,
                      ),
                    ),
            ),
          ),
          if (currentStepIndex == 0) DatePicker(),
          if (currentStepIndex == 1) const CarInfo(),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentStepIndex > 0)
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentStepIndex--;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          topLeft: Radius.circular(40),
                        ),
                        color: CupertinoColors.activeBlue,
                        boxShadow: [
                          BoxShadow(
                            color: CupertinoColors.systemBlue,
                            spreadRadius: 0.1,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: const Text(
                        'Nazad',
                        style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                if (currentStepIndex < 4)
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentStepIndex++;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: CupertinoColors.activeBlue,
                        boxShadow: [
                          BoxShadow(
                            color: CupertinoColors.systemBlue,
                            spreadRadius: 0.1,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: const Text(
                        'Dalje',
                        style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
