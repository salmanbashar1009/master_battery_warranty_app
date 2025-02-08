import 'package:flutter/material.dart';
import 'package:master_battery_warranty_app/presentation/state_managers/parent_screen_provider.dart';
import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ParentScreenProvider>();

    return Stack(
      children: [
      child,
      Positioned(
        bottom: 40,
        left: MediaQuery
            .of(context)
            .size
            .width * 0.03,

        width: MediaQuery
            .of(context)
            .size
            .width * 0.94,
        height: 72,
        child: Container(
          padding: EdgeInsets.all(8),
          // height: 50,
          // width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
              color: Color(0xFFF6F8FA),
              borderRadius: BorderRadius.circular(50)
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              GestureDetector(
              onTap: ()
          {
          provider.setSelectedIndex(0);
          },
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              decoration: BoxDecoration(
                  color: provider.selectedIndex == 0 ? Colors.white : null,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Image.asset(
                  "assets/images/home.png", color: provider.selectedIndex == 0 ?
                  Color(0xFFE11E1B) : Color(0xFF4A4C56),
          width: 24,
          height: 24,),),
    ),
    GestureDetector(
    onTap: (){
    provider.setSelectedIndex(1);
    },
    child: Container(
    padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
    decoration: BoxDecoration(
    color:provider.selectedIndex == 1 ? Colors.white : null,
    borderRadius: BorderRadius.circular(50)
    ),
    child: Image.asset("assets/images/thunder.png",color:provider.selectedIndex == 1 ? Color(0xFFE11E1B) : Color(0xFF4A4C56) ,width: 24,height: 24,),),
    ),
    GestureDetector(
    onTap: (){
    provider.setSelectedIndex(2);
    },
    child: Container(
    padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
    decoration: BoxDecoration(
    color: provider.selectedIndex == 2 ? Colors.white : null,
    borderRadius: BorderRadius.circular(50)
    ),
    child: Image.asset("assets/images/notification.png",color: provider.selectedIndex == 2 ? Color(0xFFE11E1B) : Color(0xFF4A4C56),width: 24,height: 24,),),
    ),
    GestureDetector(
    onTap: (){
    provider.setSelectedIndex(3);
    },
    child: Container(
    padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
    decoration: BoxDecoration(
    color:provider.selectedIndex == 3 ? Colors.white : null,
    borderRadius: BorderRadius.circular(50)
    ),
    child: Image.asset("assets/images/user.png",color: provider.selectedIndex == 3 ? Color(0xFFE11E1B) : Color(0xFF4A4C56),width: 24,height: 24,),),
    ),
    ],
    ),
    ),
    )
    ],
    );
  }
}