part of 'forum_bloc.dart';

abstract class ForumState extends Equatable {
  const ForumState();
  
  @override
  List<Object> get props => [];
}

class ForumInitial extends ForumState {}
class ForumLoading extends ForumState {}
class ForumLoaded extends ForumState {}

class PostInitial extends ForumState {}
class PostLoading extends ForumState {}
class PostLoaded extends ForumState {}