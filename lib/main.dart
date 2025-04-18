import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/core/constant/color.dart';
import 'app/core/routes/app_pages.dart';
import 'app/core/theme/app_theme.dart';

void main() {
  runApp(const MountripApp());
}

class MountripApp extends StatelessWidget {
  const MountripApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppTheme.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
