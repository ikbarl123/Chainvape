// @dart=2.9

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:chainvape/bloc/auth_event.dart';
import 'package:chainvape/bloc/auth_state.dart';
import 'package:chainvape/bloc/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({this.authRepository}) : assert(authRepository!=null);
  
  @override
  AuthState get initialState => AuthInit();

  @override 
  Stream<AuthState> mapEventToState(AuthState event){
    return null;
  }
}
