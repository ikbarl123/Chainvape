part of 'forum_bloc.dart';

abstract class ForumEvent extends Equatable {
  const ForumEvent();

  @override
  List<Object> get props => [];
}
class BackForum extends ForumEvent{}
class GetPostList extends ForumEvent{}
class GetPost extends ForumEvent{}


class CreatePost extends ForumEvent{
  String title;
  String post;
  CreatePost({required this.title,required this.post});
  @override
  List<Object> get props => [title,post];
}

