import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text.dart';

Future<void> showMyDialog(
    {required BuildContext context, required String text}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          AppText.appBarTitle,
          style: TextStyle(color: AppColors.white),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                text,
                style: const TextStyle(color: AppColors.white),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Кайра эсепте',
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
