part of 'replies_bloc.dart';

abstract class RepliesState extends Equatable {
  const RepliesState();
  
  @override
  List<Object> get props => [];
}

class RepliesInitial extends RepliesState {}
class RepliesLoading extends RepliesState {}
class RepliesLoaded extends RepliesState {
  final List<Reply> replies;
  
  RepliesLoaded(this.replies);
  
  @override
  List<Object> get props => [replies];
}
class ReplyCreated extends RepliesState{
  final List<Reply> replies;

  ReplyCreated(this.replies);
  @override
  List<Object> get props => [replies];
}

class ReplyFailed extends RepliesState{
  final String error;

  ReplyFailed(this.error);
  @override
  List<Object> get props => [error];
}


class ForumRepliesEmpty extends RepliesState {}
