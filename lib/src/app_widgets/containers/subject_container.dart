import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:terms/src/app/theme/theme.dart';
import 'package:terms/src/app_constants/constants.dart';

class SubjectContainer extends StatelessWidget {
  const SubjectContainer({
    super.key,
    required this.subjectWidget,
    required this.subjectName,
    required this.photoSubject,
    required this.routeText,
  });

  final Widget subjectWidget;
  final String subjectName;
  final bool photoSubject;
  final String routeText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go(routeText),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (photoSubject) subjectWidget else const SizedBox(),
                    AppSpace.sizedW20,
                    Text(
                      subjectName,
                      style: AppTextStyles.poppinsBlack22wBold,
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          const Divider(color: AppColors.black),
          AppSpace.sized5,
        ],
      ),
    );
  }
}
