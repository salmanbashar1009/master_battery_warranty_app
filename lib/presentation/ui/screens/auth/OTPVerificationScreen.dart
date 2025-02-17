import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_battery_warranty_app/application/routes/route_name.dart';
import 'package:master_battery_warranty_app/presentation/ui/utils/styles.dart';
import 'package:master_battery_warranty_app/presentation/ui/widgets/app_bar.dart';
import 'package:master_battery_warranty_app/presentation/ui/widgets/primary_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otpverificationscreen extends StatelessWidget {
  const Otpverificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Verification Code", ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.h,),
                Text("Please enter the OTP sent to your Email: sharmin@example.mail",style: Theme.of(context).textTheme.bodyMedium,),
                SizedBox(height: 20.h,),
                PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: pinTheme(),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  }, appContext: context,
                ),
                SizedBox(height: 24.h,),
                PrimaryButton(title: "Verify", onTap: (){
                  Navigator.pushNamedAndRemoveUntil(context, RouteName.setPasswordScreen, (_) => false);
                })
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
