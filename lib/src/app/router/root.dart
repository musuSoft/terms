import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:terms/src/app/router/destinations.dart' as my_des;

class RootLayout extends StatelessWidget {
  const RootLayout({
    super.key,
    required this.child,
    required this.selectedIndex,
  });

  final Widget child;
  final int selectedIndex;

  // @override
  @override
  Widget build(BuildContext context) {
    // var lastTimeBackbuttonWasClicked = DateTime.now();

    void onDestinationSelected(int index) {
      final destination = my_des.destinations[index];
      context.go(destination.route);
    }

    // return WillPopScope(
    //   onWillPop: () async {
    //     if (DateTime.now().difference(lastTimeBackbuttonWasClicked) >=
    //         const Duration(seconds: 2)) {
    //       context.go('/');
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         const SnackBar(
    //           content: Text('Press the back button again to go back'),
    //           duration: Duration(seconds: 2),
    //         ),
    //       );

    //       lastTimeBackbuttonWasClicked = DateTime.now();
    //       return false;
    //     } else {
    //       return true;
    //     }
    //   },
    // child:
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        destinations: my_des.destinations
            .map<NavigationDestination>(
              (e) => NavigationDestination(
                icon: e.icon,
                label: e.label,
              ),
            )
            .toList(),
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
    // );
  }
}
