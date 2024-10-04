import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kilo_takibi_uyg/controllers/controller.dart';
import 'package:kilo_takibi_uyg/view/profile_screen/settings_screen/settings_screen.dart';
import 'package:kilo_takibi_uyg/widgets/navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  final Controller _controller = Get.find();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        title: Obx(
          () => Text(
            _controller.appBarTitle.value,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        centerTitle: true,
        actions: [
          Obx(
            () => Visibility(
              visible: _controller.currentTabIndex.value == 4,
              child: IconButton(
                onPressed: () {
                  Get.to(
                    const SettingsScreen(),
                    transition: Transition.downToUp,
                  );
                },
                icon: const Icon(Ionicons.settings),
              ),
            ),
          ),
        ],
      ),
      body: Obx(
        () {
          return indexedStack();
        },
      ),
      bottomNavigationBar: Obx(
        () {
          return bottomNavigationBar(
              context); // CustomBottomNavigationBar, gözlemlenen değişkeni içerir
        },
      ),
    );
  }
}
