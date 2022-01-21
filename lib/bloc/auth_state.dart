part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
  
  @override
  List<Object> get props => [];
}

class AuthInit extends AuthState{
  
}
class AuthLoading extends AuthState{}
class AuthHasData extends AuthState{
  final User user;
  AuthHasData({required this.user});
  @override
  List<Object> get props => [user];
}

class AuthFailed extends AuthState{}
class LoginInit extends AuthState{}
class LoginSuccess extends AuthState{}
class LoginFailed extends AuthState{}

