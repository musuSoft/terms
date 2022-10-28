import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:terms/src/app/theme/theme.dart';
import 'package:terms/src/app_constants/constants.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    var lastTimeBackbuttonWasClicked = DateTime.now();

    return WillPopScope(
      onWillPop: () async {
        if (DateTime.now().difference(lastTimeBackbuttonWasClicked) >=
            const Duration(seconds: 2)) {
          context.go('/');
          lastTimeBackbuttonWasClicked = DateTime.now();
          return false;
        } else {
          return true;
        }
      },
      child: const Scaffold(
        body: Center(
          child: Text(
            AppText.settingTitle,
            style: AppTextStyles.poppinsBlack18w600,
          ),
        ),
      ),
    );
  }
}
