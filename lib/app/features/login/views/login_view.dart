import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountrip/app/core/constant/color.dart';
import 'package:mountrip/app/features/login/controllers/login_controller.dart';
import 'package:mountrip/app/utils/adaptive_font/adaptive_font.dart';
import 'package:mountrip/app/utils/helpers/helper_functions.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/login-background.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        SafeArea(
          child: Container(
            height: THelperFunctions.screenHeight(),
            width: THelperFunctions.screenWidth(),
            padding: EdgeInsets.symmetric(
              horizontal: THelperFunctions.screenWidth() * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: THelperFunctions.screenHeight() * 0.27,
                  ),
                  child: Image.asset(
                    'assets/images/login-logo.png',
                    width: THelperFunctions.screenWidth() * 0.4,
                    height: THelperFunctions.screenHeight() * 0.2,
                  ),
                ),
                SizedBox(height: THelperFunctions.screenHeight() * 0.18),
                Text(
                  'Welcome to Mountrip',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: AdaptiveFont.getFontSize(context, 20),
                      ),
                ),
                SizedBox(
                  height: THelperFunctions.screenHeight() * 0.005,
                ),
                Text(
                  'Sign in to your account',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: AdaptiveFont.getFontSize(context, 16),
                      ),
                ),
                SizedBox(height: THelperFunctions.screenHeight() * 0.05),
                Obx(() => ElevatedButton.icon(
                      onPressed: controller.isLoadingFacebook.value
                          ? null
                          : controller.loginWithFacebook,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor,
                        minimumSize: Size(
                          THelperFunctions.screenWidth(),
                          THelperFunctions.screenHeight() * 0.055,
                        ),
                      ),
                      iconAlignment: IconAlignment.start,
                      icon: controller.isLoadingFacebook.value
                          ? SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: Colors.blueAccent,
                              ),
                            )
                          : Image.asset(
                              'assets/icons/icon-facebook.png',
                              width: AdaptiveFont.getFontSize(context, 24),
                            ),
                      label: Text(
                        'Continue with Facebook',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: AdaptiveFont.getFontSize(context, 15),
                            ),
                      ),
                    )),
                SizedBox(height: THelperFunctions.screenHeight() * 0.02),
                Obx(
                  () => ElevatedButton.icon(
                    onPressed: controller.isLoadingGoogle.value
                        ? null
                        : controller.loginWithGoogle,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      minimumSize: Size(
                        THelperFunctions.screenWidth(),
                        THelperFunctions.screenHeight() * 0.055,
                      ),
                    ),
                    iconAlignment: IconAlignment.start,
                    icon: controller.isLoadingGoogle.value
                        ? SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: Colors.blueAccent,
                            ),
                          )
                        : Image.asset(
                            'assets/icons/icon-google.png',
                            width: AdaptiveFont.getFontSize(context, 24),
                          ),
                    label: Text(
                      'Continue with Google',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: AdaptiveFont.getFontSize(context, 15),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
