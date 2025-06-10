import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/feature/auth/presentation/login_view.dart';
import 'package:bookly/feature/onboarding/presentation/widgets/custom_text.dart';
import 'package:bookly/feature/onboarding/presentation/widgets/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewOnboarding extends StatefulWidget {
  const PageViewOnboarding({super.key});

  @override
  State<PageViewOnboarding> createState() => _PageViewOnboardingState();
}

class _PageViewOnboardingState extends State<PageViewOnboarding> {
  late PageController controller;
  int currentPage = 0;
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      currentPage = controller.page!.round();
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimryColor,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginView.routeName);
            },
            child: CustomText(text: "Skip", fontSize: 22),
          ),
        ],
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          if (index < 3) {
            currentPage = index + 1;
            setState(() {});
          }
        },
        children: [
          Onboarding(
            imagePath: "assets/onboardin1.png",
            title: "Welcome to Your Personal Library",
            des:
                "Discover thousands of books across every genre, anytime and anywhere",
          ),
          Onboarding(
            imagePath: "assets/onboarding2.png",
            title: "Customize Your Reading Experience",
            des:
                "Adjust fonts, switch themes, and organize your bookshelf just the way you like it",
          ),
          Onboarding(
            imagePath: "assets/onboarding3.png",
            title: "Begin Your Book Journey",
            des:
                "From bestselling novels to self-help gems — read what inspires you, one page at a time",
          ),
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        height: 60,
        color: kPrimryColor,
        child: Row(
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                controller.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                if (currentPage == 3) {
                  Navigator.pushNamed(context, LoginView.routeName);
                }
              },
              child: CircleAvatar(
                radius: 25,
                child:
                    currentPage == 3
                        ? Text("Start")
                        : Icon(Icons.arrow_forward, size: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
