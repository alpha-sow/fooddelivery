import 'package:auto_route/auto_route.dart';
import 'package:fooddelivery/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/login',
          page: LoginView.page,
          children: [
            AutoRoute(
              initial: true,
              path: 'welcome',
              page: WelcomeView.page,
              children: [
                AutoRoute(
                  initial: true,
                  path: "",
                  page: WelcomeFirstView.page,
                  type: const RouteType.custom(),
                ),
                AutoRoute(
                  path: "",
                  page: WelcomeSecondView.page,
                  type: const RouteType.custom(),
                ),
                AutoRoute(
                  path: "",
                  page: WelcomeThirdView.page,
                  type: const RouteType.custom(),
                )
              ],
            ),
            AutoRoute(
              path: 'email',
              page: LoginEmailView.page,
              type: const RouteType.custom(),
            ),
            AutoRoute(
              path: 'create',
              page: LoginCreateView.page,
              type: const RouteType.custom(),
            ),
            AutoRoute(
              path: 'password',
              page: LoginForgotPasswordView.page,
            ),
            AutoRoute(
              path: 'verification',
              page: LoginEmailVerificationView.page,
            ),
          ],
        ),
      ];
}
