import 'package:bloc/bloc.dart';
import 'package:chainvape/model/reply.dart';
import 'package:chainvape/service/service.dart';
import 'package:equatable/equatable.dart';

part 'replies_event.dart';
part 'replies_state.dart';

class RepliesBloc extends Bloc<RepliesEvent, RepliesState> {
  ThreadService _threadService = ThreadService();
  RepliesBloc(this._threadService) : super(RepliesInitial()) {
    on<RepliesEvent>((event, emit) {
      // TODO: implement event handler
    });
        on<GetPostReplies>((event, emit) async {
      List<Reply> reply =[];
      var replies = reply;
      replies.clear();
      replies.addAll(await _threadService.getReplies(event.id));
      
      if (replies.isEmpty) {
        emit(ForumRepliesEmpty());
      } else {
      emit(RepliesLoaded(replies));}
    });

    on<CreateReply>((event, emit) async {
      var reply = await _threadService.CreateReply(event.postId,event.reply);     

      
    });

  }
}
