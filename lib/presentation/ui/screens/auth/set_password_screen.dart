import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_battery_warranty_app/application/routes/route_name.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/auth/OTPVerificationScreen.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/auth/login_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/parent_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/utils/styles.dart';
import 'package:master_battery_warranty_app/presentation/ui/widgets/app_bar.dart';
import 'package:master_battery_warranty_app/presentation/ui/widgets/primary_button.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context,
        "Set Password",
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
                Text("Password*",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "********"),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "password should contain letter & number combination",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 12, color: mediumGrey),
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: PrimaryButton(
                    title: "Next",
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteName.loginScreen);
                    },
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_box_outlined,
                      color: red,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: RichText(
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                            style: Theme.of(context).textTheme.bodyMedium,
                            children: <TextSpan>[
                              TextSpan(
                                  text: "By continuing, you agree to our "),
                              TextSpan(
                                  text: "Terms of Service",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          decoration: TextDecoration.underline,
                                          color: red)),
                              TextSpan(text: " and "),
                              TextSpan(
                                  text: "Privacy Policy.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          decoration: TextDecoration.underline,
                                          color: red)),
                            ]),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
