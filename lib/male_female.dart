import 'package:bmi/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'utils/app_colors.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Card(
              color: AppColors.card,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: AppColors.white,
                    size: 80,
                  ),
                  Text(text, style: AppStyle.textGreyF20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
