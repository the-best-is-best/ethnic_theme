part of 'home_bloc.dart';

class HomeGetOrdersByJobType extends HomeEvent {
  final int type;
  final int orderType;
  HomeGetOrdersByJobType(this.type, this.orderType);
}

abstract class HomeEvent {}
