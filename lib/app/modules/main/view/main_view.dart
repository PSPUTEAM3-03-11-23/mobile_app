import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/modules/home/view/home_view.dart';
import 'package:hackathon4/app/modules/main/controllers/main_controller.dart';
import 'package:hackathon4/app/modules/alerts/view/alert_view.dart';
import 'package:hackathon4/app/modules/profile/view/profile_view.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  static const List<Widget> views = [HomeView(), AlertsView(), ProfileView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            onDestinationSelected: (int index) {
              controller.currentPageIndex = index;
            },
            selectedIndex: controller.currentPageIndex,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(Icons.share),
                icon: Icon(Icons.share_outlined),
                label: 'Базы данных',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.notifications),
                icon: Icon(Icons.notifications_outlined),
                label: 'Уведомления',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.person_2),
                icon: Icon(Icons.person_2_outlined),
                label: 'Профиль',
              ),
            ],
          ),
        ),
        body: Center(
          child: Obx(() => views[controller.currentPageIndex]),
        ));
  }
}
