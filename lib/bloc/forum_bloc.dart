import 'package:bloc/bloc.dart';

import 'package:chainvape/model/thread.dart';
import 'package:chainvape/model/user.dart';
import 'package:chainvape/service/service.dart';
import 'package:equatable/equatable.dart';

part 'forum_event.dart';
part 'forum_state.dart';

class ForumBloc extends Bloc<ForumEvent, ForumState> {
  final ThreadService _threadService;
   final AuthService _authService;
  ForumBloc(this._threadService,this._authService) : super(ForumInitial()) {
    on<GetPostList>((event, emit) async {
      emit(ForumLoading());
      final forum = await _threadService.getThreadList();
      final user = await _authService.hasUser(); 
      emit(ForumLoaded(forum,user));
    });


    // on<GetPost>((event, emit){
    //   List<Reply> replies = [];
    // emit (RepliesLoaded(replies));
    // emit (RepliesInitial());
    // });


    
    on<WritePost>((event, emit){
    emit (CreatePage());
    });



     on<CreatePost>((event, emit) async {
       final thread = await _threadService.CreatePost(event.title, event.post);
       emit(PostCreated(thread));
     });

    // on<CreateReply>((event, emit) async {
    //   final reply = await _threadService.createReply(event.reply);
    //   emit(ReplyCreated(reply));
    // });
  }
}
