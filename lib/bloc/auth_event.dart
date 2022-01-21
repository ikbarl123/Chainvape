part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}
class AppStarted extends AuthEvent{}
class AppCheck extends AuthEvent{}
class GetUserWithToken extends AuthEvent {
  final User user;
  GetUserWithToken(this.user);
  @override
  List<Object> get props => [user];
}

class LoggedOut extends AuthEvent{}

class LoginProcess extends AuthEvent{
  final String email;
  final String password;
  LoginProcess({required this.email,required this.password});
  List<Object> get props => [email, password];
}