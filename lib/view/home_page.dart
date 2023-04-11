import 'dart:math';
import 'package:bmi/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../calculate.dart';
import '../male_female.dart';
import '../slaider.dart';
import '../utils/app_colors.dart';
import '../utils/app_text.dart';
import '../weight_age.dart';
import 'alert_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text(AppText.appBarTitle, style: AppStyle.textWhiteF25),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: const [
                  MaleFemale(icon: Icons.male, text: AppText.male),
                  SizedBox(
                    width: 20,
                  ),
                  MaleFemale(icon: Icons.female, text: AppText.female),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SlaiderWidget(
                currentSliderValue: height,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                WeightAge(
                    text: AppText.weight,
                    value: weight,
                    remove: (maani) {
                      setState(() {
                        weight = maani;
                      });
                    },
                    add: (maani) {
                      setState(() {
                        weight = maani;
                      });
                    }),
                const SizedBox(
                  width: 10,
                ),
                WeightAge(
                  text: AppText.age,
                  value: age,
                  remove: (maani) {
                    setState(() {
                      age = maani;
                    });
                  },
                  add: (maani) {
                    setState(() {
                      age = maani;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onTap: () {
          final result = weight / pow(height / 100, 2);
          if (result < 18.5) {
            showMyDialog(
              context: context,
              text: 'Сенин салмагын аз экен. Кобуроок же',
            );
          } else if (result >= 18.5 && result <= 24.9) {
            showMyDialog(
                context: context, text: 'Сенин салмагын жакшы. Молодец!');
          } else if (result >= 24.9) {
            showMyDialog(
                context: context,
                text: 'Сенде ашыкча салмак коп. Озуно жакшы кара.');
          } else {
            showMyDialog(
                context: context, text: 'Маалымат алууда катачылыктар бар!');
          }
        },
      ),
    );
  }
}
