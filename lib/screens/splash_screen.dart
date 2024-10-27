import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/screens/home_page.dart';
import 'package:foodapp/screens/onboarding_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool onboarding = false;
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: LottieBuilder.asset(
                "lib/assests/lottie/splash screen logo animation light.json"),
          )
        ],
      ),
      nextScreen: onboarding ? const OnboardingScreen() : const HomePage(),
      splashIconSize: 5500,
      backgroundColor: Theme.of(context).colorScheme.surface,
      animationDuration: const Duration(seconds: 2),
    );
  }
}
