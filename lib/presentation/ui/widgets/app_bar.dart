import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar appBar(BuildContext context,String title){
  return AppBar(
    leadingWidth: 65.r,
    leading: Container(
      width: 48.w,
      height: 48.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF6F8FA)
      ),
      child: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
    ),
    title: Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    ),
  );
}
