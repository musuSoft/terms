import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:terms/src/modules/favorites/favorites.dart';
import 'package:terms/src/modules/favorites/view/favorites_view.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FavoritesCubit(),
      child: const FavoritesView(),
    );
  }
}
