import 'package:flutter/cupertino.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/home_screen.dart';

class ParentScreenProvider extends ChangeNotifier{

  final List<Widget> _screens = [

    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),

  ];

  List<Widget> get screens => _screens;


  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(int index){
    if(_selectedIndex != index){
      _selectedIndex = index;
      notifyListeners();
    }

    debugPrint("\n\n index: $index");

  }

}