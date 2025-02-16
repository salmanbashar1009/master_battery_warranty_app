import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_battery_warranty_app/application/routes/route_name.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/auth/OTPVerificationScreen.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/auth/login_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/parent_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/utils/styles.dart';
import 'package:master_battery_warranty_app/presentation/ui/widgets/app_bar.dart';
import 'package:master_battery_warranty_app/presentation/ui/widgets/primary_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,"Let's Join",),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h,),
                Text('Sign up to manage your profile, get notifications, and comment on live streams',softWrap: true,
                maxLines: 2,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14
                ),),
            
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  "Name*",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter full name"),
                ),
                SizedBox(
                  height: 12,
                ),
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
                  height: 12,
                ),
                Text("Phone*",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Enter phone no"),
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
                          context, RouteName.otpVerificationScreen
                         );
                    },
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text("Log in",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: red) ),
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

