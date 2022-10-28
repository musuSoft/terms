import 'package:flutter/material.dart';

const List<NavigationDestination> destinations = [
  NavigationDestination(
    label: 'home',
    icon: Icon(Icons.home_outlined),
    route: '/',
  ),
  NavigationDestination(
    label: 'Favorites',
    icon: Icon(Icons.star_outline),
    route: '/star',
  ),
  NavigationDestination(
    label: 'Settings',
    icon: Icon(Icons.settings_outlined),
    route: '/settings',
  ),
];

class NavigationDestination {
  const NavigationDestination({
    required this.route,
    required this.label,
    required this.icon,
    this.child,
  });

  final String route;
  final String label;
  final Icon icon;
  final Widget? child;
}
