import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SplashPage extends HookWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Future.delayed(
          const Duration(seconds: 3),
          () {
            Get.toNamed('/onboarding');
          },
        );
      });
      return null;
    }, const []);

    return Scaffold(
      body: Shimmer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF7565E6),
                Color(0xFF4530B2),
              ],
            ),
          ),
          child: Center(
            child: DefaultTextStyle(
              style: GoogleFonts.racingSansOne(
                  fontSize: 64,
                  color: Colors.white,
                  decoration: TextDecoration.none),
              child: Hero(
                tag: 'splash-logo',
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('WAIT LINE'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
