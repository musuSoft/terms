import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:terms/src/app_constants/constants.dart';
import 'package:terms/src/app_widgets/containers/subject_container.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

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
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppText.favoriteText),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: const [
                SubjectContainer(
                  photoSubject: false,
                  subjectName: AppText.chemistry,
                  subjectWidget: Icon(
                    Icons.female,
                    size: 30,
                  ),
                  routeText: '/homeDetailInfo',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
