part of 'replies_bloc.dart';

abstract class RepliesEvent extends Equatable {
  const RepliesEvent();

  @override
  List<Object> get props => [];
}
class GetPostReplies extends RepliesEvent{
  final int id;
  GetPostReplies({required this.id});
    @override
  List<Object> get props => [id];
}

class CreateReply extends RepliesEvent{

  String postId;
  String reply;
  CreateReply({required this.postId,required this.reply});
  @override
  List<Object> get props => [postId,reply];
}