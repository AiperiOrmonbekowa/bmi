import 'package:bmi/utils/app_styles.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: const Color(0xFFFF1493),
        height: 70,
        width: double.infinity,
        child: const Center(
          child: Text(AppText.calculate, style: AppStyle.textWhiteF24),
        ),
      ),
    );
  }
}
