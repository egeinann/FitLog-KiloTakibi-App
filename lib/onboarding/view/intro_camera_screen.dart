import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_takibi_uyg/extensions/padding_extensions.dart';
import 'package:lottie/lottie.dart';

class IntroCamera extends StatelessWidget {
  const IntroCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: context.paddingLarge,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: Lottie.asset(
                  'assets/lottie/cameraOnboarding.json',
                  fit: BoxFit.scaleDown,
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AutoSizeText('Photo & Gallery',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge),
                    SizedBox(height: Get.size.height * 0.02),
                    AutoSizeText(
                      'Document your changes with photos!',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Document your changes with photos!