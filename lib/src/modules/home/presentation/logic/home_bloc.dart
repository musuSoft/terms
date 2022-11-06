import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:terms/src/modules/modul.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.homeRepo,
  }) : super(LoadingHomeState()) {
    on<GetHomeEvent>(_getHome);
  }

  final HomeRepo homeRepo;
  Future<void> _getHome(
    GetHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(LoadingHomeState());
    // ignore: inference_failure_on_instance_creation
    await Future.delayed(const Duration(seconds: 1));
    final home = await homeRepo.getHome(documentName: event.documentName);
    home.fold(
      (error) => emit(const UserFailureState('')),
      (home) => emit(LoadedHomeState(home)),
    );
  }
}
