import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mountrip/app/core/routes/app_pages.dart';
import 'package:mountrip/app/utils/helpers/helper_functions.dart';
import 'package:mountrip/app/utils/logger/logger.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //Variables
  final _auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = "".obs;
  final RxBool isAuthenticated = false.obs;

  // getters
  User? get user => firebaseUser.value;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    // setInitialScreen(firebaseUser.value, role.value);
    FlutterNativeSplash.remove();
    super.onReady();
  }

  setInitialScreen(User? user) {
    user == null ? Get.offAllNamed(Routes.LOGIN) : Get.offAllNamed(Routes.HOME);
  }

  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount = (await GoogleSignIn(
      scopes: ["profile", "email"],
    ).signIn());

    if (googleSignInAccount != null) {
      try {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential userCredential =
            await _auth.signInWithCredential(credential);

        setInitialScreen(userCredential.user);

        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          if (kDebugMode) logger.e("Login error : ${e.message}");
          THelperFunctions.showErrorSnackBar(
            "Account exists with different credential. Try again.",
            marginBottom: 100,
          );
        } else if (e.code == 'invalid-credential') {
          if (kDebugMode) logger.e("Login error : ${e.message}");
          THelperFunctions.showErrorSnackBar(
            "Invalid credential. Try again.",
            marginBottom: 100,
          );
        }
      } catch (e) {
        if (kDebugMode) logger.e("Login error : $e");
        THelperFunctions.showErrorSnackBar(
          "Login error. Please try again.",
          marginBottom: 100,
        );
      }
    }
    return null;
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      await GoogleSignIn().signOut();

      Get.offAllNamed(Routes.LOGIN);
    } catch (e) {
      if (kDebugMode) logger.e("Sign out error : $e");
      THelperFunctions.showErrorSnackBar("Sign out error. Please try again.");
    }
  }
}
