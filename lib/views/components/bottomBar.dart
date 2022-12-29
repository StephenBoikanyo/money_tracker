import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:money_tracker/views/screens/screens.dart';
import 'components.dart';
import 'package:get/get.dart';


class BottomNavBar extends StatefulWidget {
  int currentPage;
  final pageController = PageController();

  BottomNavBar({required this.currentPage});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int? currentPage;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BottomBar(
      backgroundColor: Colors.white,
      selectedIndex: widget.currentPage,
      items:  <BottomBarItem>[
        BottomBarItem(
          icon: InkWell(
            onTap:() => Get.toNamed(HomeScreen.id) , child: const Icon(AkarIcons.home,color: Colors.black,)),
          //title: Text('Home',style: TextStyle(color: Color(0xFF6A6A6A),fontFamily: 'Poppins',fontSize: 15),),
          activeColor: Colors.white,
        ),
        const BottomBarItem (
          icon: CircleAvatar( backgroundColor: Colors.black, child:  Icon(AkarIcons.plus, color: Colors.white,)),
         // title: Text('Inbox',style: TextStyle(color: Color(0xFF6A6A6A),fontFamily: 'Poppins',fontSize: 20),),
          activeColor:  Colors.white,
        ),
        BottomBarItem(
          icon: InkWell(
            onTap: ()=>Get.toNamed(TransactionsScreen.id),
              child: const Icon(AkarIcons.align_bottom,color: Colors.black,)),
          //title: Text('Account',style: TextStyle(color: Color(0xFF6A6A6A),fontFamily: 'Poppins',fontSize: 20),),
          activeColor: Colors.white,
        ),

      ] ,
      onTap: (int index) {
        pageController.jumpToPage(index);
        setState(() => currentPage = index);
      },
    );
  }
}
