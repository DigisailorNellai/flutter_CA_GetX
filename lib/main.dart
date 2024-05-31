import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/data/dataSources/auth_remote_data_source.dart';
import 'package:practice_for_ca_and_state_management/data/repositories/auth_repo_impl.dart';
import 'package:practice_for_ca_and_state_management/domain/useCases/signIn.dart';
import 'package:practice_for_ca_and_state_management/domain/useCases/sign_up.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/auth_controller.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/signup_controller.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/verification_controller.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/aboutus.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/admin_login.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/create_password.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/donation_page.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/events.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/forgot_password.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/home_page.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/intro.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/main-verification.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/members_login.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/new_password.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/signup_page.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/splashscreen.dart';
import 'package:practice_for_ca_and_state_management/presentation/pages/verification.dart';




void main() {

  final source = dataSource();
  final authRepository = authRepoImpl(source: source);
  final useCase = signUpUsecase(repository: authRepository);
  final passUseCase = passwordUsecases(repository: authRepository);
  final verifyUseCase = otpUseCase(repository: authRepository);
  final loginUseCase = loginUsecase(repository: authRepository);
  final fPasswordUse = fPasswordUsecase(repository: authRepository);
  final changepassUseCase = changePasswordUsecase(repository: authRepository);

  Get.put(signUpController(useCase: useCase));
  Get.put(passController(passUseCase: passUseCase));
  Get.put(verficationController(verifyUseCase: verifyUseCase, source: source));
  Get.put(authController(loginUse: loginUseCase));
  Get.put(fPasswordController(fPasswordUse: fPasswordUse));
  Get.put(Otp2Controller(verifyUseCase: verifyUseCase));
  Get.put(changePassController(changepassUseCase: changepassUseCase));
  

  

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashScreen',
      getPages: [
        GetPage(name: '/splashScreen', page: () => const splashScreen()),
        GetPage(name: '/intro', page: () => const intro()),
        GetPage(name: '/adminLogin', page: () => const adminLogin()),
        GetPage(name: '/membersLogin', page: () => const membersLogin()),
        GetPage(name: '/forgotPassword', page: () => const forgotPassword()),
        GetPage(name: '/verificationPage', page: () => const verificationPage()),
        GetPage(name: '/signUp', page: () => const signUp()),
        GetPage(name: '/createPassword', page: () => const createPassword()),
        GetPage(name: '/newPassword', page: () => const newPassword()),
        GetPage(name: '/mainVerification', page: () => const mainVerificationPage()),
        GetPage(name: '/homePage', page: () => const homePage()),
        GetPage(name: '/events', page: () => const events()),
        GetPage(name: '/aboutUs', page: () => const aboutUs()),
        GetPage(name: '/donationPage', page: () => const donationPage())
        ],
    );
  }
}
