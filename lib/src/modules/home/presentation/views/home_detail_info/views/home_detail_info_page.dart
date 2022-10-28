import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:terms/src/modules/home/presentation/views/home_detail_info/logic/home_detail_info_cubit.dart';
import 'package:terms/src/modules/home/presentation/views/home_detail_info/views/home_detail_info_view.dart';

class HomeDetailInfoPage extends StatelessWidget {
  const HomeDetailInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeDetailInfoCubit(),
      child: const HomeDetailInfoView(),
    );
  }
}
