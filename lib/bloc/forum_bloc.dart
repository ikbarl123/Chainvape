import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'forum_event.dart';
part 'forum_state.dart';

class ForumBloc extends Bloc<ForumEvent, ForumState> {
  ForumBloc() : super(ForumInitial()) {
    on<ForumEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
