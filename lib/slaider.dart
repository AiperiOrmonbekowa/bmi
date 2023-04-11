import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_styles.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlaiderWidget extends StatelessWidget {
  const SlaiderWidget(
      {Key? key, required this.currentSliderValue, required this.onChanged})
      : super(key: key);
  final double currentSliderValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.card,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(AppText.height, style: AppStyle.textGreyF22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('${currentSliderValue.toInt()}',
                  style: AppStyle.textWhiteF30),
              const Text(AppText.cm, style: AppStyle.textGreyF15),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoSlider(
                activeColor: AppColors.white,
                thumbColor: AppColors.buttonColor,
                max: 300,
                value: currentSliderValue,
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
