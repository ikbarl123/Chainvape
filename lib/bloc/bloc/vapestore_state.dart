part of 'vapestore_bloc.dart';

abstract class VapestoreState extends Equatable {
  const VapestoreState();
  
}

class VapestoreInitial extends VapestoreState {
    @override
  List<Object> get props => [];
}

class VapestoreLoaded extends VapestoreState {
  final List<Vapestore> store;

  VapestoreLoaded(this.store);
    @override
  List<Object> get props => [store];
}