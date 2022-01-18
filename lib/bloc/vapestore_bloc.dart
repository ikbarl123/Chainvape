import 'package:bloc/bloc.dart';
import 'package:chainvape/model/vapestore.dart';
import 'package:equatable/equatable.dart';
import 'package:chainvape/service/service.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:stream_transform/stream_transform.dart';

part 'vapestore_event.dart';
part 'vapestore_state.dart';

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class VapestoreBloc extends Bloc<VapestoreEvent, VapestoreState> {
  final StoreService _storeService;

  VapestoreBloc(this._storeService) : super(VapestoreInitial()) {
    on<LoadApiEvent>((event, emit)async{
     
      final stores = await _storeService.getStoreList();
      emit(VapestoreLoaded(stores));
     
    });

  } 
}
