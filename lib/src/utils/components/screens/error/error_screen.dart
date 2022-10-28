import 'package:flutter/material.dart';
import 'package:terms/src/app/theme/colors/app_colors.dart';
import 'package:terms/src/app/theme/typography/app_typography.dart';
import 'package:terms/src/app_constants/spaces/app_spaces.dart';
import 'package:terms/src/app_constants/strings/app_string.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            // Expanded(child: Assets.images.error.image()),
            Center(
              child: SizedBox(
                width: 315,
                child: Column(
                  children: [
                    const Text(
                      AppText.homeAppBarText,
                      style: AppTextStyles.poppinsGrey16w700,
                    ),
                    AppSpace.sized20,
                    const Text(
                      AppText.homeAppBarText,
                      style: AppTextStyles.robotoGrey13w400,
                      textAlign: TextAlign.center,
                    ),
                    AppSpace.sized20,
                    SizedBox(
                      width: 124,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const MenuView(),
                          //   ),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.grayE,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: const Text(
                          AppText.homeAppBarText,
                          style: AppTextStyles.poppinsWhite16w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
