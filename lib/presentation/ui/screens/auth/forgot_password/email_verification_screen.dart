import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_battery_warranty_app/application/routes/route_name.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/auth/OTPVerificationScreen.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/auth/login_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/parent_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/utils/styles.dart';
import 'package:master_battery_warranty_app/presentation/ui/widgets/app_bar.dart';
import 'package:master_battery_warranty_app/presentation/ui/widgets/primary_button.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        "Forgot Password",
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Please enter your Email to reset your password.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 13.5.sp, color: mediumGrey),
                ),
                SizedBox(height: 32.h,),
                Text("Email*",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter email address"),
                ),
                SizedBox(
                  height: 16.h,
                ),

                SizedBox(
                  height: 24.h,
                ),
                PrimaryButton(
                  title: "Next",
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteName.forgotPasswordOTPScreen);
                  },
                ),
                SizedBox(
                  height: 24.h,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
