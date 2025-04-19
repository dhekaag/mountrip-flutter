import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mountrip/app/core/constant/color.dart';
import 'package:mountrip/app/features/home/views/home_view.dart';
import 'package:mountrip/app/features/navigation_bar/controllers/navigation_bar_controller.dart';

class NavigationBarView extends GetView<NavigationBarController> {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => getCurrentPage()),
      ),
      bottomNavigationBar: Obx(() => _buildBottomBar()),
    );
  }

  Widget _buildBottomBar() {
    return BottomNavigationBar(
      currentIndex: controller.tabIndex.value,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      selectedItemColor: tertiaryColor,
      unselectedItemColor: tertiaryColor.withAlpha(150),
      backgroundColor: Colors.black.withAlpha(100),
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        controller.changeTabIndex(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.home_2_copy),
          activeIcon: Icon(Iconsax.home_2),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.calendar_2_copy),
          activeIcon: Icon(Iconsax.calendar_2),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.people_copy),
          activeIcon: Icon(Iconsax.people),
          label: 'Community',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          activeIcon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }

  Widget getCurrentPage() {
    switch (controller.tabIndex.value) {
      case 0:
        return const HomeView();
      case 1:
      // return const BookingListView();
      case 2:
      // return const CommunityListView();
      case 3:
      // return const ProfileView();
      default:
        return const HomeView();
    }
  }
}
