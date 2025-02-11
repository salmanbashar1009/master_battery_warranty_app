import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppHeader extends StatelessWidget {
  const CustomAppHeader({
    super.key, required this.title, required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        width: 48.w,
        height: 48.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF6F8FA)
        ),
        child: IconButton(
          onPressed: onTap,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
