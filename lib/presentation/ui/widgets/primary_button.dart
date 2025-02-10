import 'package:flutter/material.dart';
import 'package:master_battery_warranty_app/presentation/ui/utils/styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key, required this.title, required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: red,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8))),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.w600, color: white),
        ));
  }
}
