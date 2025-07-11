import 'package:bookly/feature/auth/presentation/login_view.dart';
import 'package:bookly/feature/home/presentation/book_details_view.dart';
import 'package:bookly/feature/home/presentation/home_view.dart';
import 'package:bookly/feature/onboarding/presentation/page_view_onboarding.dart';
import 'package:go_router/go_router.dart';

abstract class GoRouteApp {
  static final router = GoRouter(
    initialLocation: HomeView.routeName,
    routes: [
      //  GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: PageViewOnboarding.routeName,
        builder: (context, state) => const PageViewOnboarding(),
      ),
      GoRoute(
        path: LoginView.routeName,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: BookDetailsView.routeName,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
