import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:terms/src/app/theme/theme.dart';
import 'package:terms/src/app_constants/constants.dart';
import 'package:terms/src/app_widgets/containers/subject_container.dart';
import 'package:terms/src/app_widgets/inputs/text_form_field.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var lastTimeBackbuttonWasClicked = DateTime.now();

    return WillPopScope(
      onWillPop: () async {
        if (DateTime.now().difference(lastTimeBackbuttonWasClicked) >=
            const Duration(seconds: 2)) {
          context.go('/');
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Press the back button again to go back'),
              duration: Duration(seconds: 2),
            ),
          );

          lastTimeBackbuttonWasClicked = DateTime.now();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            AppText.homeAppBarText,
            style: AppTextStyles.poppinsBlack24w600,
          ),
          centerTitle: true,
          backgroundColor: AppColors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
            child: Column(
              children: [
                AppTextFormField(
                  controller: _controllerEmail,
                  obscureText: false,
                  filled: true,
                  fillColor: AppColors.grayFromArgb,
                  prefixixIcon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                  hintText: AppText.searchText,
                ),
                AppSpace.sized20,
                ColoredBox(
                  color: AppColors.blueFromArgb,
                  child: Column(
                    children: const [
                      SubjectContainer(
                        photoSubject: true,
                        subjectName: AppText.biology,
                        subjectWidget: Icon(
                          Icons.male,
                          size: 30,
                        ),
                        routeText: '/homeDetail',
                      ),
                      SubjectContainer(
                        photoSubject: true,
                        subjectName: AppText.maths,
                        subjectWidget: Icon(
                          Icons.numbers,
                          size: 30,
                        ),
                        routeText: '/homeDetail',
                      ),
                      SubjectContainer(
                        photoSubject: true,
                        subjectName: AppText.kyrgyzLanguage,
                        subjectWidget: Icon(
                          Icons.language,
                          size: 30,
                        ),
                        routeText: '/homeDetail',
                      ),
                      SubjectContainer(
                        photoSubject: true,
                        subjectName: AppText.chemistry,
                        subjectWidget: Icon(
                          Icons.female,
                          size: 30,
                        ),
                        routeText: '/homeDetail',
                      ),
                      SubjectContainer(
                        photoSubject: true,
                        subjectName: AppText.informatics,
                        subjectWidget: Icon(
                          Icons.laptop,
                          size: 30,
                        ),
                        routeText: '/homeDetail',
                      ),
                      SubjectContainer(
                        photoSubject: true,
                        subjectName: AppText.physics,
                        subjectWidget: Icon(
                          Icons.settings,
                          size: 30,
                        ),
                        routeText: '/homeDetail',
                      ),
                      SubjectContainer(
                        photoSubject: true,
                        subjectName: AppText.russLanguage,
                        subjectWidget: Icon(
                          Icons.language,
                          size: 30,
                        ),
                        routeText: '/homeDetail',
                      ),
                      SubjectContainer(
                        photoSubject: true,
                        subjectName: AppText.photo,
                        subjectWidget: Icon(
                          Icons.photo,
                          size: 30,
                        ),
                        routeText: '/homeDetail',
                      ),
                      SubjectContainer(
                        photoSubject: true,
                        subjectName: AppText.englishLanguage,
                        subjectWidget: Icon(
                          Icons.language,
                          size: 30,
                        ),
                        routeText: '/homeDetail',
                      ),
                      SubjectContainer(
                        photoSubject: true,
                        subjectName: AppText.physicalEducation,
                        subjectWidget: Icon(
                          Icons.run_circle_outlined,
                          size: 30,
                        ),
                        routeText: '/homeDetail',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
