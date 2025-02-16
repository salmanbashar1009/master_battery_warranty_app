import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_battery_warranty_app/my_app.dart';
import 'package:master_battery_warranty_app/presentation/state_providers/parent_screen_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Set device orientation to portrait
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Initialize ScreenUtil
  await ScreenUtil.ensureScreenSize();

  // Wrap MyApp with ScreenUtilInit for proper initialization
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ParentScreenProvider>(
            create: (_) => ParentScreenProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690), // Add your design size here
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MyApp(),
      ),
    ),
  );
}
