import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:terms/src/modules/home/presentation/views/home_detail/home_detail_maths/logic/home_detail_maths_cubit.dart';
import 'package:terms/src/modules/home/presentation/views/home_detail/home_detail_maths/views/home_detail_maths_view.dart';

class HomeDetailMathsPage extends StatelessWidget {
  const HomeDetailMathsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeDetailMathsCubit(),
      child: const HomeDetailMathsView(),
    );
  }
}
