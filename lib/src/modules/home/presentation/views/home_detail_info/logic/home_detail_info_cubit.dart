import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_detail_info_state.dart';

class HomeDetailInfoCubit extends Cubit<HomeDetailInfoState> {
  HomeDetailInfoCubit() : super(HomeDetailInitial());
}
