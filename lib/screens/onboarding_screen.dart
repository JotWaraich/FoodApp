import 'package:flutter/material.dart';
import 'package:foodapp/screens/home_page.dart';
import 'package:foodapp/screens/onboarding_screens/onboarding_page1.dart';
import 'package:foodapp/screens/onboarding_screens/onboarding_page2.dart';
import 'package:foodapp/screens/onboarding_screens/onboarding_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              if (value == 2) {
                setState(() {
                  isLastPage = true;
                });
              } else {
                setState(() {
                  isLastPage = false;
                });
              }
            },
            children: const [
              OnboardingPage1(),
              OnboardingPage2(),
              OnboardingPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xFFFF7622),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     _controller.jumpToPage(2);
                //   },
                //   child: Text("skip"),
                // ),
                // isLastPage
                //     ? GestureDetector(
                //         onTap: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) {
                //                 return const HomePage();
                //               },
                //             ),
                //           );
                //         },
                //         child: Text("Dome"),
                //       )
                //     : GestureDetector(
                //         onTap: () {
                //           _controller.nextPage(
                //             duration: const Duration(milliseconds: 500),
                //             curve: Curves.easeIn,
                //           );
                //         },
                //         child: Container(
                //           decoration: BoxDecoration(
                //             color: Theme.of(context).colorScheme.primary,
                //             borderRadius: BorderRadius.circular(10),
                //           ),
                //           padding: const EdgeInsets.symmetric(
                //             horizontal: 50,
                //             vertical: 20,
                //           ),
                //           child: Text("next"),
                //         ),
                //       ),
              ],
            ),
          ),
          Overlay(
            initialEntries: [
              OverlayEntry(
                builder: (context) {
                  return Positioned(
                    bottom: 50,
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        isLastPage
                            ? GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const HomePage();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 20,
                                  ),
                                  child: const Text(
                                    "GET STARTED",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  _controller.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 20,
                                  ),
                                  child: const Text(
                                    "NEXT",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
