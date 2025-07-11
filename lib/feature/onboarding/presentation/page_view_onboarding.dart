import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/feature/auth/presentation/login_view.dart';
import 'package:bookly/feature/onboarding/presentation/widgets/custom_text.dart';
import 'package:bookly/feature/onboarding/presentation/widgets/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewOnboarding extends StatefulWidget {
  const PageViewOnboarding({super.key});
static const String routeName="PageViewOnboarding";
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
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginView.routeName);
            },
            child:const CustomText(text: "Skip", fontSize: 22),
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
        children:const [
          Onboarding(
            imagePath: Assets.onboarding1,
            title: "Welcome to Your Personal Library",
            des:
                "Discover thousands of books across every genre, anytime and anywhere",
          ),
          Onboarding(
            imagePath: Assets.onboarding2,
            title: "Customize Your Reading Experience",
            des:
                "Adjust fonts, switch themes, and organize your bookshelf just the way you like it",
          ),
          Onboarding(
            imagePath: Assets.onboarding3,
            title: "Begin Your Book Journey",
            des:
                "From bestselling novels to self-help gems — read what inspires you, one page at a time",
          ),
        ],
      ),
      bottomSheet: Container(
        padding:const EdgeInsets.symmetric(horizontal: 30),
        height: 60,
        color:ColorsApp.kPrimryColor,
        child: Row(
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect:const WormEffect(),
            ),
           const Spacer(),
            InkWell(
              onTap: () {
                controller.nextPage(
                  duration:const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                if (currentPage == 3) {
                  
                }
              },
              child: CircleAvatar(
                radius: 25,
                child:
                    currentPage == 3
                        ?const Text("Start")
                        :const Icon(Icons.arrow_forward, size: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
