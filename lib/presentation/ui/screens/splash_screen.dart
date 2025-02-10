import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/auth/login_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/home_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/parent_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/utils/image_path.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (contex) =>  LoginScreen()),
            (_) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150.h,
            ),
            Center(
              child: Image.asset(
                brandLogo,
                width: 248.w,
                height: 126.h,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 150.h,
            ),
            NutsActivityIndicator(
              activeColor: Colors.black54,
              inactiveColor: Colors.black26,
              tickCount: 8,
              relativeWidth: 0.7,
              radius: 16,
              startRatio: 0.4,
              animationDuration: Duration(milliseconds: 500),
            )
          ],
        ),
      ),
    );
  }
}
