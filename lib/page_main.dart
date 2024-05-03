import 'package:flipcart_clone/accounts/account.dart';
import 'package:flipcart_clone/bottom_navigation.dart';
import 'package:flipcart_clone/cart/cart.dart';
import 'package:flipcart_clone/categories.dart';
import 'package:flipcart_clone/home_page.dart';
import 'package:flipcart_clone/notification.dart';
import 'package:flutter/material.dart';


class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});


  @override
  Widget build(BuildContext context) {
    final _pages = [
    HomePage(),
    CategoryPage(),
    NotificationsScreen(),
    Account(userName: 'akash', emailId: 'akashpramod'),
    MyCartWidget(),
  ];
    return Scaffold(
     body: SafeArea(
       child: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
         
       },),
     ),
          bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}