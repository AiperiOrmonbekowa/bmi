import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_styles.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    Key? key,
    required this.text,
    required this.value,
    required this.remove,
    required this.add,
  }) : super(key: key);
  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Card(
            color: AppColors.card,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 28,
                ),
                Text(
                  text,
                  style: AppStyle.textGreyF22,
                ),
                Text('$value', style: AppStyle.textWhiteF30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    RemoveAddButton(
                      iconData: Icons.remove,
                      onPressed: () => remove(value - 1),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    RemoveAddButton(
                      iconData: Icons.add,
                      onPressed: () => add(value + 1),
                    ),
                    const SizedBox(
                      width: 15,
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RemoveAddButton extends StatelessWidget {
  const RemoveAddButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);
  final IconData iconData;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.icon,
      foregroundColor: AppColors.white,
      onPressed: onPressed,
      child: Icon(
        iconData,
        size: 30,
      ),
    );
  }
}
