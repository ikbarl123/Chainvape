import 'package:bloc/bloc.dart';
import 'package:chainvape/service/service.dart';
import 'package:equatable/equatable.dart';
import 'package:chainvape/model/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
      final AuthService _authService;

  AuthBloc(this._authService) : super(AuthInit()) {
    on<AppCheck>((event, emit)async{
      emit(AuthLoading());
     final hasToken = await _authService.hasToken();
     print(state);
     if(hasToken != "kosong"){
       print(state);
       emit(AuthHasData(user: hasToken));
     }else {
       emit(AuthFailed());
       print(state);
     }
    });

    on<LoggedOut>((event, emit)async{
      emit(AuthLoading());
     final user = await _authService.hasToken();
     if(user !="kosong"){
       emit(AuthHasData(user: user));
     }else {
       emit(AuthFailed());
     }
    });

    on<LoginProcess>((event, emit)async{
      emit(AuthLoading());
     final user = await _authService.doLogin(event.email, event.password);
     if(user !="failed"){
       emit(LoginSuccess());
       await _authService.setUser(user);
       emit(AuthHasData(user: user));
     }else {
       emit(AuthFailed());
     }
    });
  }
}
