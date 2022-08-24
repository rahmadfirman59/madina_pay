// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:madina_pay/ui/dashboard/dashboard.dart';
import 'package:madina_pay/ui/pembayaran/pembayaran.dart';
import 'package:madina_pay/ui/profile/profile.dart';
import 'package:madina_pay/ui/transaksi/transaksi.dart';

import '../controllers/home_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: homeController.currentIndex.value,
            children: [
              Dashboard(),
              Pembayaran(),
              Transaksi(),
              Profil(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: homeController.currentIndex.value,
          backgroundColor: Colors.blue,
          selectedIconTheme: IconThemeData(color: Colors.white),
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            height: 2.0,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            height: 2.0,
          ),
          unselectedItemColor: Colors.black54,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            // authController.loginModel.value.user.userLevelId != 1?
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Icon(Icons.home),
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Icon(LineIcons.moneyCheck),
              ),
              label: "Pembayaran",
            ),

            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Icon(LineIcons.moneyBill),
              ),
              label: "Transaksi",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Icon(LineIcons.user),
              ),
              label: "Profil",
            ),
          ],
          onTap: (index) {
            homeController.currentIndex.value = index;
          },
        ),
      ),
    );
  }
}
