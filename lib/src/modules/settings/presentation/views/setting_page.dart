import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:terms/src/modules/settings/presentation/logic/setting_cubit.dart';
import 'package:terms/src/modules/settings/presentation/views/setting_view.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingCubit(),
      child: const SettingView(),
    );
  }
}
