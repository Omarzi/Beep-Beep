import 'package:beep_beep/features/auth/data/data_provider/local/my_config_cache.dart';
import 'package:beep_beep/features/auth/data/data_provider/local/my_config_cache_keys.dart';
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
        if (MyConfigCach.getString(key: MyConfigCacheKeys.token) == '') {
          Navigator.pushReplacementNamed(context, 'check-screen');
        } else if(MyConfigCach.getString(key: MyConfigCacheKeys.token).isNotEmpty) {
          Navigator.pushReplacementNamed(context, 'on-boarding-screen');
        }
      },
    );
  }
}
