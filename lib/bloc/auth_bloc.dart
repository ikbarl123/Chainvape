import 'package:bloc/bloc.dart';
import 'package:chainvape/bloc/auth_repository.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc({required AuthRepository authRepository}): _authRepository=authRepository,super(AuthInitialize());
  // AuthBloc() : super(AuthInitial()) {
  //   on<AuthEvent>((event, emit) {
  //     // TODO: implement event handler
  //   });
  

  @override
  // TODO: implement initialState
  AuthState get initialState => AuthInitialize();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AuthCheck){
      yield AuthLoading();

      final hasToken= await _authRepository.hasToken();
      if (hasToken!=null){
        yield AuthHasToken(token: hasToken);
      } else
      {
        yield AuthFailed();
      }



    }
  }
}
