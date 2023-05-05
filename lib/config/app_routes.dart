import 'package:beep_beep/features/auth/presentation/login_view.dart';
import 'package:beep_beep/features/auth/presentation/on_boadring_view.dart';
import 'package:beep_beep/features/auth/presentation/signup_view.dart';
import 'package:beep_beep/features/calling_view.dart';
import 'package:beep_beep/features/dollar_view.dart';
import 'package:beep_beep/features/layout/presentation/views/layout_view.dart';
import 'package:beep_beep/features/layout/presentation/views/pages/choose_reason_view.dart';
import 'package:beep_beep/features/layout/presentation/views/sub_pages/fawry_orders_view.dart';
import 'package:beep_beep/features/layout/presentation/views/sub_pages/layout_view2.dart';
import 'package:beep_beep/features/layout/presentation/views/sub_pages/settings_view.dart';
import 'package:beep_beep/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'splash-screen':
        return PageTransition(
          child: SplashView(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );
      case 'login-screen':
        return PageTransition(
          child: LoginView(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );
      case 'on-boarding-screen':
        return PageTransition(
          child: OnBoardingView(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );
      case 'signup-screen':
        return PageTransition(
          child: SignUpView(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );
      case 'layout-screen':
        return PageTransition(
          child: LayoutView(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );
      case 'layout-screen2':
        return PageTransition(
          child: LayoutView2(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );
      case 'fawry-orders':
        return PageTransition(
          child: FawryOrdersView(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );
      case 'choose-reason':
        return PageTransition(
          child: ChooseReasonView(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );
      case 'calling-sreen':
        return PageTransition(
          child: CallingView(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );
      case 'settings-screen':
        return PageTransition(
          child: SettingsView(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );
      case 'dollar-screen':
        return PageTransition(
          child: DollarView(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 200),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    // todo check my usage
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          // todo move this string to strings manager
          title: const Text(
            '',
          ),
        ),
        // todo move this string to strings manager
        body: const Center(
          child: Text(
            '',
          ),
        ),
      ),
    );
  }
}
