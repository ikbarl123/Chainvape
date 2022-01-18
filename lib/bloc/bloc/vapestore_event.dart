part of 'vapestore_bloc.dart';

abstract class VapestoreEvent extends Equatable {
  const VapestoreEvent();
}

class LoadApiEvent extends VapestoreEvent {
  @override
  List<Object> get props => [];
  
}
