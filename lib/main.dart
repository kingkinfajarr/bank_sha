import 'package:bank_sha/shared/shared.dart';
import 'package:flutter/material.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        title: 'Bank Sha',
        debugShowCheckedModeBanner: false,
        theme: _appTheme,
        routes: {
          '/': (context) => const SplashPage(),
          '/onboarding': (context) => const OnboardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
          '/sign-up-set-ktp': (context) => const SignUpSetKtpPage(),
          '/sign-up-success': (context) => const SignUpSuccessPage(),
          '/home': (context) => const HomePage(),
          '/profile': (context) => const ProfilePage(),
          '/pin': (context) => const PinPage(),
          '/profile-edit': (context) => const ProfileEditPage(),
          '/profile-edit-pin': (context) => const ProfileEditPinPage(),
          '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
        },
      ),
    );
  }
}

final _appTheme = ThemeData(
  scaffoldBackgroundColor: lightBackgroundColor,
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: lightBackgroundColor,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: blackColor,
    ),
    titleTextStyle: blackTextStyle.copyWith(
      fontSize: 20,
      fontWeight: semiBold,
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
);
