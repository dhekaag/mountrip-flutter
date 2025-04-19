import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mountrip/app/core/constant/color.dart';
import 'package:mountrip/app/features/home/views/home_view.dart';
import 'package:mountrip/app/features/navigation_bar/controllers/navigation_bar_controller.dart';
import 'package:mountrip/app/utils/adaptive_font/adaptive_font.dart';

class NavigationBarView extends GetView<NavigationBarController> {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => getCurrentPage()),
      bottomNavigationBar: Obx(() => _buildBottomBar(context)),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: controller.tabIndex.value,
      onTap: (index) {
        controller.changeTabIndex(index);
      },
      showUnselectedLabels: false,
      showSelectedLabels: true,
      selectedItemColor: tertiaryColor,
      unselectedItemColor: tertiaryColor.withAlpha(150),
      backgroundColor: Colors.black.withAlpha(100),
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontSize: AdaptiveFont.getFontSize(context, 12),
        fontWeight: FontWeight.w500,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.home_2_copy,
            size: AdaptiveFont.getFontSize(context, 21),
          ),
          activeIcon: Icon(
            Iconsax.home_2,
            size: AdaptiveFont.getFontSize(context, 21),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.calendar_2_copy,
            size: AdaptiveFont.getFontSize(context, 21),
          ),
          activeIcon: Icon(
            Iconsax.calendar_2,
            size: AdaptiveFont.getFontSize(context, 21),
          ),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.people_copy,
            size: AdaptiveFont.getFontSize(context, 21),
          ),
          activeIcon: Icon(
            Iconsax.people,
            size: AdaptiveFont.getFontSize(context, 21),
          ),
          label: 'Community',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_2_outlined,
            size: AdaptiveFont.getFontSize(context, 21),
          ),
          activeIcon: Icon(
            Icons.person,
            size: AdaptiveFont.getFontSize(context, 21),
          ),
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
