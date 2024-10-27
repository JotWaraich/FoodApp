import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Container(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Center(
              child: LottieBuilder.asset(
                  "lib/assests/lottie/onboarding page 2.json"),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Order from chosen chef',
              style: GoogleFonts.sen(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                textAlign: TextAlign.center,
                'Get all your loved foods in one once place, you just place the order we do the rest',
                style: GoogleFonts.sen(
                  fontSize: 19,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
