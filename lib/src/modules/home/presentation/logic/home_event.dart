part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}
class GetHomeEvent extends HomeEvent {
  const GetHomeEvent(this.documentName);
  final String documentName;

  @override
  List<Object> get props => [documentName];
}
