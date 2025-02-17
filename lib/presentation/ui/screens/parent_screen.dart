import 'package:flutter/material.dart';
import 'package:master_battery_warranty_app/presentation/state_providers/parent_screen_provider.dart';
import 'package:master_battery_warranty_app/presentation/ui/widgets/custom_bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class ParentScreen extends StatelessWidget {

  const ParentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final parentScreeProvider = Provider.of<ParentScreenProvider>(context,listen: false);
    return Scaffold(
     body: CustomBottomNavBar(child: parentScreeProvider.screens[parentScreeProvider.selectedIndex]),
    );
  }
}




