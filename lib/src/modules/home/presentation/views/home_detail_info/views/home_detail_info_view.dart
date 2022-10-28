import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:terms/src/app/theme/theme.dart';
import 'package:terms/src/app_constants/constants.dart';

class HomeDetailInfoView extends StatelessWidget {
  const HomeDetailInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    var lastTimeBackbuttonWasClicked = DateTime.now();

    return WillPopScope(
      onWillPop: () async {
        if (DateTime.now().difference(lastTimeBackbuttonWasClicked) >=
            const Duration(seconds: 1)) {
          context.go('/homeDetail');
          lastTimeBackbuttonWasClicked = DateTime.now();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppText.homeAppBarText),
          leading: IconButton(
            onPressed: () => context.go('/homeDetail'),
            // onPressed: () => context.go('/homeDetail'),
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
              child: Column(
                children: [
                  const Text(
                    AppText.aNaturalNumber,
                    style: AppTextStyles.poppinsBlack22wBold,
                  ),
                  AppSpace.sized20,
                  Image.network(
                    'https://image.shutterstock.com/image-vector/flatli-flat-line-font-latin-260nw-757934899.jpg',
                  ),
                  AppSpace.sized30,
                  const Text(
                    AppText.numbersTitle,
                    style: AppTextStyles.poppinsBlack16w600,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
