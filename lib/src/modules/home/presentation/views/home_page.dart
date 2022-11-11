import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:terms/src/modules/home/presentation/logic/home_cubit/home_cubit.dart';
import 'package:terms/src/modules/home/presentation/views/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child:const HomeView(),
    );
  }
}
