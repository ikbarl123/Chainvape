import 'package:bloc/bloc.dart';
import 'package:chainvape/model/thread.dart';
import 'package:chainvape/service/service.dart';
import 'package:equatable/equatable.dart';

part 'forum_event.dart';
part 'forum_state.dart';

class ForumBloc extends Bloc<ForumEvent, ForumState> {
  final ThreadService _threadService;
  ForumBloc(this._threadService) : super(ForumInitial()) {
    on<GetPostList>((event, emit) async {
      final forum = await _threadService.getThreadList();
      emit(ForumLoaded(forum));
    });
  }
}
