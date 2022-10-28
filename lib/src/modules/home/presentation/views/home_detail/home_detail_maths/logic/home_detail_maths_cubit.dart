import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_detail_maths_state.dart';

class HomeDetailMathsCubit extends Cubit<HomeDetailMathsState> {
  HomeDetailMathsCubit() : super(HomeDetailInitial());
}
