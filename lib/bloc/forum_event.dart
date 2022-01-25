part of 'forum_bloc.dart';

abstract class ForumEvent extends Equatable {
  const ForumEvent();

  @override
  List<Object> get props => [];
}

class GetPostList extends ForumEvent{}
class GetPost extends ForumEvent{}

class CreatePost extends ForumEvent{}
class CreateReply extends ForumEvent{}