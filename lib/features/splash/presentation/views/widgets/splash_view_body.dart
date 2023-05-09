import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigationToHome();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: fadingAnimation!,
          builder: (context, child) {
            return Opacity(
              opacity: fadingAnimation!.value,
              child: Image.asset(AppAssets.beep1Beef),
            );
          },
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);

    animationController!.repeat(reverse: true);
  }

  void navigationToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, 'check-screen');
      },
    );
  }
}
