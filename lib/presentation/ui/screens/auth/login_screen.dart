import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_battery_warranty_app/application/routes/route_name.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/auth/sign_up_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/parent_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/utils/styles.dart';
import 'package:master_battery_warranty_app/presentation/ui/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 56.h,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Log in",
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  "Email*",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter Email"),
                ),
                SizedBox(
                  height: 12,
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
                  decoration: InputDecoration(hintText: "******"),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget Password?",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                        color: red,
                        decorationColor: red),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: PrimaryButton(
                    title: "Log in",
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, RouteName.parentScreen, (_) => false);
                    },
                  ),
                ),
                SizedBox(
                  height: 120.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account? ",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text("Sign up",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: red)),
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
