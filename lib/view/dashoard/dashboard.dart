import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:umkmku/constant.dart';
import 'package:umkmku/controller/dashboard_controller.dart';
import 'package:umkmku/view/home/home_screen.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
     builder: (controller) => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              const HomeScreen(),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.orange,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
                width: 0.6,
              ),
            ),
          ),
          child: SnakeNavigationBar.color(
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.circle,
          padding: const EdgeInsets.symmetric(vertical: 5),
          unselectedLabelStyle: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          snakeViewColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
          showUnselectedLabels: true,
          currentIndex: controller.tabIndex,
          selectedLabelStyle: const TextStyle( fontSize: 11),
          onTap:(value){
            controller.updateTabIndex(value);
          },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home, ), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.shopify, ), label: 'Category'),
              BottomNavigationBarItem(icon: Icon(Icons.menu, ), label: 'Menu'),
              BottomNavigationBarItem(icon: Icon(Icons.person_pin, ), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
