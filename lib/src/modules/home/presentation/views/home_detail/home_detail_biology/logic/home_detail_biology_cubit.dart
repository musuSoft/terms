import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_detail_biology_state.dart';

class HomeDetailBiologyCubit extends Cubit<HomeDetailBiologyState> {
  HomeDetailBiologyCubit() : super(HomeDetailBiologyInitial());
}
