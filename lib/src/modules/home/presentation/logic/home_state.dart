part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  
  @override
  List<Object> get props => [];
}

class LoadingHomeState extends HomeState {}

class LoadedHomeState extends HomeState {
  const LoadedHomeState(this.home);
  final List<HomeModel> home;


  @override
  List<Object> get props => [home];
}

class UserFailureState extends HomeState {
  const UserFailureState(this.message);
  final String? message;


  @override
  List<Object> get props => [message!];
}
