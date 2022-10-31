import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_detail_english_language_state.dart';

class HomeDetailEnglishLanguageCubit extends Cubit<HomeDetailEnglishLanguageState> {
  HomeDetailEnglishLanguageCubit() : super(HomeDetailEnglishLanguageInitial());
}
